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

echo $MOLECULE_NAME
echo $PARAMETERS
# TODO: GenerambaでTemplate作成
#bundle exec generamba template install
#bundle exec generamba gen Sample2 Molecules # TODO: Nameを外から受け取る

# TODO: 仮定義用の変数名をclass内に定義

# TODO: sourcery --sources Molecules/SampleButtonsView.swift --templates Sample.stencil --output Molecules/SampleButtonsView.swift

# TODO: 仮定義用の変数名を削除
