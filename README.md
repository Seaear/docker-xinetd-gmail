```
$ docker run -d \
  -p 465:465 -p 587:587 -p 993:993 \
  seaear/xinetd-gmail
```
Modify the **hosts** file

`smtp.gmail.com x.x.x.x`
