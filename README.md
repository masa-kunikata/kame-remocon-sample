# カメリモコン

## インストール

2020-03-08
Windows にインストールする！

Ruby2.7 mingw x64 インストール後、

```
> gem install kame-remocon
```

じつはこれだけでは起動できないので
eventmachine を入れ替える

```
> gem uninstall eventmachine
```

ここで、下記gemの依存性が壊れる警告がでるが、まあそのまま続ける

> faye-websocket-0.10.9 depends on eventmachine (>= 0.12.0)
> thin-1.7.2 depends on eventmachine (~> 1.0, >= 1.0.4)
> websocket-driver-0.7.1 depends on eventmachine (>= 0, development)

platform ruby のeventmachineを入れる

```
> gem install eventmachine --platform ruby
```

## 起動

```
> irb
```

```
require 'kame_remocon'
Kame::App.start self
```

ブラウザが下記URLで開く！

http://localhost:9292/



---

## バッチ作成

なんかバッチにできんのか？

一応できた


run_kame.bat

```run_kame.bat
call C:\Ruby27-x64\bin\setrbvars.cmd

C:\Ruby27-x64\bin\ruby -e "require 'kame_remocon';Kame::App.start self; sleep;"
```


