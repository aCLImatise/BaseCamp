version 1.0

task Dsrc {
  input {
    Boolean dD
    Boolean qQ
    Boolean fF
    Boolean bB
    Boolean oO
    Boolean lL
    Boolean cC
    Boolean tT
    Boolean sS
    Boolean vV
  }
  command <<<
    dsrc \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{true="-f" false="" fF} \
      ~{true="-b" false="" bB} \
      ~{true="-o" false="" oO} \
      ~{true="-l" false="" lL} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}