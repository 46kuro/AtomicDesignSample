## Overview
AtomicDesginのMoleculeをまとめたDesignComponentをMulti Projectで定義したいときに、ボイラープレートコードを生成するためのサンプルプロジェクト。 

GenerambaとSouceryを使用することで、Command Lineベースでファイル生成ができます。

## Installation  
### [Generamba](https://github.com/strongself/Generamba)
bundlerからsetupする。

### [Sourcery](https://github.com/krzysztofzablocki/Sourcery)
brewでinstallしておく。

## Usage
* Generambaをbundlerでsetupし、Sourceryをbrewでinstallします。
* 下記のコードをCommand Line上で入力する。
```bash
$ sh CreateTemplate.sh -n Sample -p name=String,name2=String
```
* 現在StringとUIImageのボイラープレートコードにのみ対応しています。
