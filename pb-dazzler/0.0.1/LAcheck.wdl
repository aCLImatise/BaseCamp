version 1.0

task LAcheck {
  input {
    Boolean vV
    Boolean sS
    Boolean aA
  }
  command <<<
    LAcheck \
      ~{true="-v" false="" vV} \
      ~{true="-S" false="" sS} \
      ~{true="-a" false="" aA}
  >>>
}