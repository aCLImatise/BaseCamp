version 1.0

task Kat {
  input {
    Boolean vV
  }
  command <<<
    kat \
      ~{true="-v" false="" vV}
  >>>
}