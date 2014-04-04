Test Conditions
---------------

Software Versions

* mri 2.1.0
* rbx 2.2.6
* puma 2.8.1

Process Startup: <code>./config/puma.rb > /dev/null 2>&1</code>
> Avoiding IO cost by redirecting to /dev/null

Test Script: <code>ab -n 10000 -c 10 'http://127.0.0.1:9292/'</code>

Hardware: iMac 2.93 GHz i7, 8GB 1333 MHz Ram

Total Times In ms
-----------------


```
Connection Times (ms)
                 min  mean[+/-sd] median   max
MRI 4x16 :          1    3   4.0      2     126
MRI 1x16 :          2    4   1.6      4      37
RBX 4x16*:          1    3  28.2      3    1408
RBX 1x16 :          1    4  17.7      3     583
```

> * I had to turn down the concurrency to 4 concurrent requests to stop RBX from hanging
