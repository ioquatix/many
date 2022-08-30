WSL2 Ubuntu 20.04 上での評価

ruby 3.2.0dev (2022-08-16T15:58:56Z master ac890ec062) [x86_64-linux]

```
[master]$ ruby c.rb 1000
                                     user     system      total        real
Connect 1000                     0.010698   0.047185   0.057883 (  0.057865)
Get ack from 1000 conn           0.019681   0.058673   0.078354 (  6.946567)
Put to a socket                  0.000058   0.000123   0.000181 (  0.000181)
Get from 1000 connections        0.002658   0.005649   0.008307 (  0.645095)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 2000
                                     user     system      total        real
Connect 2000                     0.042888   0.069407   0.112295 (  0.112320)
Get ack from 2000 conn           0.061293   0.065489   0.126782 (  2.305751)
Put to a socket                  0.000025   0.000023   0.000048 (  0.000049)
Get from 2000 connections        0.008786   0.024140   0.032926 (  1.156428)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 3000
                                     user     system      total        real
Connect 3000                     0.103976   0.074208   0.178184 (  0.178339)
Get ack from 3000 conn           0.136994   0.100344   0.237338 (  7.567242)
Put to a socket                  0.000225   0.000131   0.000356 (  0.000353)
Get from 3000 connections        0.079572   0.048715   0.128287 (  0.985949)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 4000
                                     user     system      total        real
Connect 4000                     0.110895   0.312177   0.423072 (  0.423460)
Get ack from 4000 conn           0.122045   0.229385   0.351430 ( 20.072981)
Put to a socket                  0.000409   0.000000   0.000409 (  0.000408)
Get from 4000 connections        0.088580   0.099830   0.188410 (  1.510436)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 5000
                                     user     system      total        real
Connect 5000                     0.130113   0.206818   0.336931 (  5.471162)
Get ack from 5000 conn           0.079583   0.300004   0.379587 ( 26.544710)
Put to a socket                  0.001591   0.000000   0.001591 (  0.001589)
Get from 5000 connections        0.062108   0.181116   0.243224 (  2.076757)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 6000
                                     user     system      total        real
Connect 6000                     0.142290   0.458629   0.600919 ( 16.055860)
Get ack from 6000 conn           0.244556   0.404309   0.648865 ( 35.541289)
Put to a socket                  0.000000   0.001055   0.001055 (  0.003452)
Get from 6000 connections        0.045167   0.192517   0.237684 (  6.093675)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 7000
                                     user     system      total        real
Connect 7000                     0.090875   0.522020   0.612895 ( 26.347596)
Get ack from 7000 conn           0.173857   0.516581   0.690438 ( 43.158578)
Put to a socket                  0.000000   0.000860   0.000860 (  0.001201)
Get from 7000 connections        0.125746   0.376136   0.501882 (  6.532745)
```

すべて同一サーバプロセスに接続。
終了時のサーバのメモリは 6GB くらい？

MaNy

```
ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 1000
                                     user     system      total        real
Connect 1000                     0.018842   0.020025   0.038867 (  0.039569)
Get ack from 1000 conn           0.020219   0.049373   0.069592 (  0.637049)
Put to a socket                  0.000028   0.000024   0.000052 (  0.000051)
Get from 1000 connections        0.001028   0.000913   0.001941 (  0.090861)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 2000
                                     user     system      total        real
Connect 2000                     0.058403   0.038936   0.097339 (  0.097406)
Get ack from 2000 conn           0.035856   0.066117   0.101973 (  0.708897)
Put to a socket                  0.000025   0.000025   0.000050 (  0.000051)
Get from 2000 connections        0.004051   0.000000   0.004051 (  0.167259)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 3000
                                     user     system      total        real
Connect 3000                     0.062944   0.099288   0.162232 (  0.162555)
Get ack from 3000 conn           0.066759   0.066759   0.133518 (  0.786702)
Put to a socket                  0.000037   0.000037   0.000074 (  0.000073)
Get from 3000 connections        0.000000   0.005336   0.005336 (  0.281444)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 4000
                                     user     system      total        real
Connect 4000                     0.107042   0.139976   0.247018 (  0.247169)
Get ack from 4000 conn           0.078775   0.117076   0.195851 (  1.058020)
Put to a socket                  0.000000   0.000093   0.000093 (  0.000093)
Get from 4000 connections        0.004654   0.002945   0.007599 (  0.327034)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 5000
                                     user     system      total        real
Connect 5000                     0.089820   0.202311   0.292131 (  0.293573)
Get ack from 5000 conn           0.063024   0.138775   0.201799 (  0.951758)
Put to a socket                  0.000021   0.000035   0.000056 (  0.000056)
Get from 5000 connections        0.000027   0.009035   0.009062 (  0.592660)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 6000
                                     user     system      total        real
Connect 6000                     0.116234   0.144638   0.260872 (  1.336761)
Get ack from 6000 conn           0.028170   0.072164   0.100334 (  0.410387)
Put to a socket                  0.000043   0.000050   0.000093 (  0.000094)
Get from 6000 connections        0.011328   0.000078   0.011406 (  0.604646)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 7000
                                     user     system      total        real
Connect 7000                     0.157672   0.170864   0.328536 (  1.399733)
Get ack from 7000 conn           0.061256   0.115814   0.177070 (  0.790996)
Put to a socket                  0.000029   0.000035   0.000064 (  0.000065)
Get from 7000 connections        0.001465   0.012977   0.014442 (  0.663022)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 8000
                                     user     system      total        real
Connect 8000                     0.170531   0.174585   0.345116 (  1.387077)
Get ack from 8000 conn           0.074959   0.070932   0.145891 (  0.711738)
Put to a socket                  0.000039   0.000035   0.000074 (  0.000075)
Get from 8000 connections        0.014470   0.002343   0.016813 (  0.902015)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 9000
                                     user     system      total        real
Connect 9000                     0.156214   0.245826   0.402040 (  1.415187)
Get ack from 9000 conn           0.038608   0.115468   0.154076 (  0.696225)
Put to a socket                  0.000069   0.000000   0.000069 (  0.000071)
Get from 9000 connections        0.019026   0.000000   0.019026 (  0.916831)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 10000
                                     user     system      total        real
Connect 10000                    0.220760   0.205861   0.426621 (  2.515167)
Get ack from 10000 conn          0.096707   0.070335   0.167042 (  0.617607)
Put to a socket                  0.000031   0.000024   0.000055 (  0.000053)
Get from 10000 connections       0.000000   0.019277   0.019277 (  1.065380)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 11000
                                     user     system      total        real
Connect 11000                    0.236499   0.236228   0.472727 (  3.578342)
Get ack from 11000 conn          0.047835   0.045639   0.093474 (  0.271254)
Put to a socket                  0.000028   0.000025   0.000053 (  0.000053)
Get from 11000 connections       0.000007   0.021238   0.021245 (  1.064616)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 12000
                                     user     system      total        real
Connect 12000                    0.244278   0.306183   0.550461 (  4.947062)
Get ack from 12000 conn          0.028986   0.050450   0.079436 (  0.091070)
Put to a socket                  0.000026   0.000028   0.000054 (  0.000054)
Get from 12000 connections       0.000035   0.021303   0.021338 (  1.165339)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 13000
                                     user     system      total        real
Connect 13000                    0.356289   0.252530   0.608819 (  2.654751)
Get ack from 13000 conn          0.079355   0.077289   0.156644 (  0.550337)
Put to a socket                  0.000033   0.000022   0.000055 (  0.000054)
Get from 13000 connections       0.019789   0.009513   0.029302 (  1.363730)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 14000
                                     user     system      total        real
Connect 14000                    0.280180   0.360768   0.640948 (  5.348829)
Get ack from 14000 conn          0.054262   0.077925   0.132187 (  0.345776)
Put to a socket                  0.000025   0.000029   0.000054 (  0.000054)
Get from 14000 connections       0.008894   0.019637   0.028531 (  1.432240)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 15000
                                     user     system      total        real
Connect 15000                    0.294675   1.826806   2.121481 (  7.551802)
Get ack from 15000 conn          0.013541   0.060837   0.074378 (  0.074371)
Put to a socket                  0.000015   0.000077   0.000092 (  0.000091)
Get from 15000 connections       0.019137   0.013527   0.032664 (  1.609293)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 16000
                                     user     system      total        real
Connect 16000                    0.371168   4.249439   4.620607 ( 12.586733)
Get ack from 16000 conn          0.040267   0.058060   0.098327 (  0.098334)
Put to a socket                  0.000008   0.000069   0.000077 (  0.000077)
Get from 16000 connections       0.010127   0.020184   0.030311 (  1.408823)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 17000
                                     user     system      total        real
Connect 17000                    0.350437   5.400961   5.751398 ( 13.271252)
Get ack from 17000 conn          0.041178   0.047458   0.088636 (  0.088655)
Put to a socket                  0.000000   0.000105   0.000105 (  0.000105)
Get from 17000 connections       0.039798   0.000098   0.039896 (  2.013614)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 18000
                                     user     system      total        real
Connect 18000                    0.462730   9.889243  10.351973 ( 18.036395)
Get ack from 18000 conn          0.049799   0.060483   0.110282 (  0.110298)
Put to a socket                  0.000004   0.000067   0.000071 (  0.000071)
Get from 18000 connections       0.020271   0.041555   0.061826 (  3.495949)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 19000
                                     user     system      total        real
Connect 19000                    0.550494  13.005856  13.556350 ( 25.324726)
Get ack from 19000 conn          0.050506   0.082551   0.133057 (  0.133067)
Put to a socket                  0.000004   0.000076   0.000080 (  0.000079)
Get from 19000 connections       0.050057   0.003367   0.053424 (  3.412769)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 20000
                                     user     system      total        real
Connect 20000                    0.591766  12.263141  12.854907 ( 29.359929)
Get ack from 20000 conn          0.020219   0.283092   0.303311 (  0.303329)
Put to a socket                  0.000005   0.000080   0.000085 (  0.000084)
Get from 20000 connections       0.020123   0.038722   0.058845 (  3.165335)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 21000
                                     user     system      total        real
Connect 21000                    0.997856  24.435127  25.432983 ( 50.987148)
Get ack from 21000 conn          0.091050   0.299262   0.390312 (  0.390329)
Put to a socket                  0.000006   0.000126   0.000132 (  0.000132)
Get from 21000 connections       0.030265   0.020427   0.050692 (  3.215294)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 22000
                                     user     system      total        real
Connect 22000                    0.576906  16.200420  16.777326 ( 37.522101)
Get ack from 22000 conn          0.060463   0.181082   0.241545 (  0.241552)
Put to a socket                  0.000003   0.000070   0.000073 (  0.000073)
Get from 22000 connections       0.019913   0.033572   0.053485 (  3.056705)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 23000
                                     user     system      total        real
Connect 23000                    0.865740  26.344717  27.210457 ( 53.818189)
Get ack from 23000 conn          0.100719   0.157650   0.258369 (  0.258391)
Put to a socket                  0.000003   0.000095   0.000098 (  0.000099)
Get from 23000 connections       0.030177   0.038350   0.068527 (  3.490139)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 24000
                                     user     system      total        real
Connect 24000                    0.597798  22.007665  22.605463 ( 41.335611)
Get ack from 24000 conn          0.070872   1.436465   1.507337 (  1.507402)
Put to a socket                  0.000003   0.000101   0.000104 (  0.000104)
Get from 24000 connections     ^[[A  0.031647   0.028438   0.060085 (  4.113129)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 25000
                                     user     system      total        real
Connect 25000                    0.777901  27.924835  28.702736 ( 60.790323)
Get ack from 25000 conn          0.065287   0.332837   0.398124 (  0.398126)
Put to a socket                  0.000010   0.000309   0.000319 (  0.000320)
Get from 25000 connections       0.050521   0.011754   0.062275 (  4.852231)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 26000
                                     user     system      total        real
Connect 26000                    0.976619  32.713759  33.690378 ( 60.352213)
Get ack from 26000 conn          0.100398   0.236668   0.337066 (  0.337089)
Put to a socket                  0.000005   0.000135   0.000140 (  0.000138)
Get from 26000 connections       0.000001   0.079577   0.079578 (  4.448053)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 27000
                                     user     system      total        real
Connect 27000                    1.108511  37.584804  38.693315 ( 68.922516)
Get ack from 27000 conn          0.100723   0.195151   0.295874 (  0.295886)
Put to a socket                  0.000005   0.000145   0.000150 (  0.000150)
Get from 27000 connections       0.029964   0.043880   0.073844 (  4.726326)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 28000
                                     user     system      total        real
Connect 28000                    0.888731  33.154749  34.043480 ( 59.448928)
Get ack from 28000 conn          0.080391   0.420528   0.500919 (  0.500933)
Put to a socket                  0.000002   0.000073   0.000075 (  0.000075)
Get from 28000 connections       0.000004   0.062473   0.062477 (  3.409399)

ko1@WSL2 ~/ruby/src/trunk
[master]$ ruby c.rb 29000
                                     user     system      total        real
Connect 29000                  trying to make 28232th
Traceback (most recent call last):
        17: from c.rb:9:in `<main>'
        16: from /usr/lib/ruby/2.7.0/benchmark.rb:205:in `bm'
        15: from /usr/lib/ruby/2.7.0/benchmark.rb:173:in `benchmark'
        14: from c.rb:10:in `block in <main>'
        13: from /usr/lib/ruby/2.7.0/benchmark.rb:375:in `item'
        12: from /usr/lib/ruby/2.7.0/benchmark.rb:293:in `measure'
        11: from c.rb:11:in `block (2 levels) in <main>'
        10: from c.rb:11:in `map'
         9: from c.rb:11:in `each'
         8: from c.rb:11:in `times'
         7: from c.rb:13:in `block (3 levels) in <main>'
         6: from /usr/lib/ruby/2.7.0/socket.rb:632:in `tcp'
         5: from /usr/lib/ruby/2.7.0/socket.rb:227:in `foreach'
         4: from /usr/lib/ruby/2.7.0/socket.rb:227:in `each'
         3: from /usr/lib/ruby/2.7.0/socket.rb:642:in `block in tcp'
         2: from /usr/lib/ruby/2.7.0/socket.rb:137:in `connect'
         1: from /usr/lib/ruby/2.7.0/socket.rb:64:in `connect_internal'
/usr/lib/ruby/2.7.0/socket.rb:64:in `connect': Cannot assign requested address - connect(2) for 127.0.0.1:12345 (Errno::EADDRNOTAVAIL)
```

最後はクライアント側のポート数の制限にひっかかって死亡。
サーバの最後は 8.2g 消費。

`IO.select` 版で評価

```
                                     user     system      total        real
Connect 25000                    1.184187  41.100899  42.285086 ( 79.642494)
Get ack from 25000 conn          0.203310   0.496977   0.700287 ( 38.013987)
Put to a socket                  0.000001   0.000039   0.000040 (  0.000038)
Get from 25000 connections       0.084153   0.434686   0.518839 (  0.619020)

# 参考の MaNy 版
                                     user     system      total        real
Connect 25000                    0.777901  27.924835  28.702736 ( 60.790323)
Get ack from 25000 conn          0.065287   0.332837   0.398124 (  0.398126)
Put to a socket                  0.000010   0.000309   0.000319 (  0.000320)
Get from 25000 connections       0.050521   0.011754   0.062275 (  4.852231)
```

あれ、Connection 部分はなんか MaNy 速いですね。
メッセージ受信が遅いのは、`CV#broadcast` かな。
（スレッドをたたき起こす必要がないので速い可能性がある）