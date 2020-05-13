version 1.0

task Lbin {
  input {
    Boolean fF
    Boolean vV
  }
  command <<<
    lbin \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV}
  >>>
}