version 1.0

task Makmdm {
  input {
    Boolean cC
    Boolean mM
    Boolean lL
    Boolean pP
    Boolean f78F78
    Boolean bB
    Boolean vV
  }
  command <<<
    makmdm \
      ~{true="-c-" false="" cC} \
      ~{true="-m-" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-p" false="" pP} \
      ~{true="-f78" false="" f78F78} \
      ~{true="-b" false="" bB} \
      ~{true="-v" false="" vV}
  >>>
}