# adblock-unbound
Script build host to block directly from unbound. It is based on work of [https://github.com/StevenBlack/hosts](https://github.com/StevenBlack/hosts)

Also inpired by this blog post : [https://deadc0de.re/articles/unbound-blocking-ads.html](https://deadc0de.re/articles/unbound-blocking-ads.html)

## How to use as standalone

Checkout the repository

```
git clone https://github.com/lepiaf/adblock-unbound.git
```

Allow execute 

```
cd adblock-unbound
chmod +x build.sh
```

Run it

```
./build.sh
```

## How to use with docker

```bash
docker run lepiaf/adblock-unbound -e RECIPE=fakenews-gambling-social > /etc/unbound/conf.d/ads.conf
```

then restart unbound