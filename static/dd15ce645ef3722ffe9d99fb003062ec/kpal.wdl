version 1.0

task Kpal {
  input {
    Boolean vV
  }
  command <<<
    kpal \
      ~{true="-v" false="" vV}
  >>>
}