version 1.0

task Spingo {
  input {
    Boolean vV
    Boolean kK
    Boolean bB
    Boolean sS
    Boolean pP
    Boolean dD
    Boolean iI
    Boolean wW
    Boolean aA
  }
  command <<<
    spingo \
      ~{true="-v" false="" vV} \
      ~{true="-k" false="" kK} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI} \
      ~{true="-w" false="" wW} \
      ~{true="-a" false="" aA}
  >>>
}