version 1.0

task Cryfa {
  input {
    Boolean kK
    Boolean dD
    Boolean fF
    Boolean vV
    Boolean sS
    Boolean tT
  }
  command <<<
    cryfa \
      ~{true="-k" false="" kK} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT}
  >>>
}