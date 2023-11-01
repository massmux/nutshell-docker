# Cashu Nutshell Docker

**Cashu Nutshell is a Chaumian Ecash wallet and mint for Bitcoin Lightning. Cashu Nutshell is the reference implementation in Python.**

This is a full docker setup for [nutshell](https://github.com/cashubtc/nutshell) by Calle

Cashu is an Ecash implementation based on David Wagner's variant of Chaumian blinding ([protocol specs](https://github.com/cashubtc/nuts)). Token logic based on [minicash](https://github.com/phyro/minicash) ([description](https://gist.github.com/phyro/935badc682057f418842c72961cf096c)) which implements a [Blind Diffie-Hellman Key Exchange](https://cypherpunks.venona.com/date/1996/03/msg01848.html) scheme written down [here](https://gist.github.com/RubenSomsen/be7a4760dd4596d06963d67baf140406). The database mechanics in Cashu Nutshell and the Lightning backend uses parts from [LNbits](https://github.com/lnbits/lnbits-legend).

## Install and run

get image from dockerhub

```
docker pull massmux/nutshell
```

configure the .env file (use the .env.example provided)

Run

```
cd nutshell-docker
docker-compose up -d
```
