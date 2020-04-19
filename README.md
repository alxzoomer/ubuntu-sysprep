# Prepare Ubuntu box

## Prerequisites for local installation

Run `bootstrap.sh` script

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/alxzoomer/ubuntu-sysprep/master/bootstrap.sh)"
```

or

```sh
wget -O- https://raw.githubusercontent.com/alxzoomer/ubuntu-sysprep/master/bootstrap.sh | sh
```

Create `hosts.yml` from `hosts-example.yml`

```sh
cd ~/projects/ubuntu-sysprep
cp hosts-example.yml hosts.yml
```

Edit parameters in hosts.yml.

Run deployment:

```sh
make sysprep
```
