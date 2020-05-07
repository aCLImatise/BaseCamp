version 1.0

task CatDir {
  input {
    Boolean nonNonZ
  }
  command <<<
    catDir \
      ~{true="-nonz" false="" nonNonZ}
  >>>
}