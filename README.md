
# Soldat Lemmy

## Building

``` shell
$ make
```

## Server

``` shell
$ warp -d build/
```

## Dependencies

* GNU make
* Warp

You can enter an environment with all the tools by running:

``` shell
$ nix-shell -p sass -p haskellPackages.warp
```

## Deploy

``` shell
$ git co gh-pages
$ cp -r build/* .
```
