# OCaml HelloWorld

<table>
  <tr>
    <th>CI</th>
    <th>Status</th>
  </tr>
  <tr>
    <td>Circle CI (on Linux)</td>
    <td>
      <a href="https://circleci.com/gh/xiaoxiangmoe/ocaml-helloworld">
        <img
          src="https://img.shields.io/circleci/project/github/xiaoxiangmoe/ocaml-helloworld.svg"
          alt="Linux Build Status"
        />
      </a>
    </td>
  </tr>
  <tr>
    <td>Azure DevOps (on macOS)</td>
    <td>
      <a href="https://dev.azure.com/xiaoxiangmoe/ocaml-helloworld/_build/latest?definitionId=1?branchName=master">
        <img
          src="https://img.shields.io/azure-devops/build/xiaoxiangmoe/ocaml-helloworld/1.svg"
          alt="macOS Build Status"
        />
      </a>
    </td>
  </tr>
</table>

OCaml Version Hello World Program

## init

```sh
git clone https://github.com/xiaoxiangmoe/ocaml-helloworld.git
opam switch create . --yes
# opam switch create ./ --locked --yes
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

## build documentation

```sh
opam exec --switch . -- dune build @doc
open _build/default/_doc/_html/index.html
```

## unit test

```sh
opam exec --switch . -- dune runtest
```

## install library

```sh
# install
opam install the-library-name --yes
# do not update opam lock file
# opam lock
# modify opam file to add deps
vim ./opam
# modify dune file to add deps
vim ./???/dune
```

---

## hint

- do not use lock-file
- do not use switch export
- do not use test dependency
