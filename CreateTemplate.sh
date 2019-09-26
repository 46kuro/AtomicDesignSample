#!/bin/sh

#  CreateTemplate.sh
#  AtomicDesignSample
#
#  Created by Shinji Kurosawa on 2019/09/25.
#  Copyright © 2019 Shinji Kurosawa. All rights reserved.


while getopts n:p: OPT
do
case $OPT in
    "n" ) MOLECULE_NAME="$OPTARG";;
    "p" ) PARAMETERS="$OPTARG";;
esac
done

bundle exec generamba template install
bundle exec generamba gen $MOLECULE_NAME Molecules

sourcery --sources AtomicDesignSample/Molecules/${MOLECULE_NAME}/${MOLECULE_NAME}View.swift \
--templates AtomicDesignSample/Resources/Molecules.stencil \
--output AtomicDesignSample/Molecules/${MOLECULE_NAME}/${MOLECULE_NAME}View.swift \
--args ${PARAMETERS}

sed -i '' -e '/sourcery:/d' AtomicDesignSample/Molecules/${MOLECULE_NAME}/${MOLECULE_NAME}View.swift
