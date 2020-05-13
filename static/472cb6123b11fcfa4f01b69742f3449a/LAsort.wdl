version 1.0

task LAsort {
  input {
    Boolean vV
    Boolean aA
  }
  command <<<
    LAsort \
      ~{true="-v" false="" vV} \
      ~{true="-a" false="" aA}
  >>>
}