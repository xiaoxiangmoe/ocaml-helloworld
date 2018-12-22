# ocaml-helloworld

OCaml Version Hello World Program

## init

```sh
git clone https://github.com/xiaoxiangmoe/ocaml-helloworld.git
opam switch import opam-switch-universe  --switch .
opam exec --switch . -- dune exec ./bin/main.exe
```

## opam switch

export export a compiler universe by

```sh
opam switch export --full opam-switch-universe
```

restore enviroment by

```sh
opam switch import opam-switch-universe --switch .
```

## debug

```sh
opam exec --switch . -- dune utop
```

```ocaml
utop # open Lib;;
utop # #show Math.add;;              (* 1 *)
val add : int -> int -> int
utop # Math.add 1 2;;                (* 2 *)
- : int = 3
utop # let add2 = Math.add 2;;       (* 3 *)
val add2 : int -> int = <fun>
utop # add2 5;;                      (* 4 *)
- : int = 7
```

## build

```sh
# build
opam exec --switch . -- dune build ./bin/main.exe
# run
./_build/default/bin/main.exe
```

## install library

```sh
# install
opam install the-library-name --yes
# update opam switch snapshot
opam switch export --full opam-switch-universe
# modify opam file to add deps
vim ./opam
# modify dune file to add deps
vim ./???/dune
```