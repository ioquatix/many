チャットサーバを想定した簡単なサーバ

* コネクションを受ける
  * そのソケットに対する受信待ち、送信待ちの2スレッドを作る
  * ack を返す（"connected" という文字を送信）
* あるソケットからメッセージを受信したら、接続している全ソケットにそのメッセージを送信

クライアント側：

1. n 個のコネクションを作る（`Socket.tcp(...)`）
2. ack を待つ
3. ある1つのソケットへメッセージを送信（`s.puts "hello"`）
4. 全接続で "hello" の受信を待つ

これを 1,000~27,000 まで 1,000 刻みで評価。

評価はクライアントとサーバ同一マシン（Intel(R) Core(TM) i7-10810U）でテキトーに実行（WSL2）。
