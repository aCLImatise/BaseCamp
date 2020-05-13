version 1.0

task Phi {
  input {
    Boolean fF
    Boolean sS
    Boolean rR
    Boolean tT
    Boolean pP
    Boolean wW
    Boolean oO
    Boolean vV
    Boolean gG
  }
  command <<<
    Phi \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-w" false="" wW} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{true="-g" false="" gG}
  >>>
}