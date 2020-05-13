version 1.0

task SraX {
  input {
    Boolean oO
    Boolean sS
    Boolean aA
    Boolean eE
    Boolean idId
    Boolean cC
    Boolean dbDb
    Boolean uU
    Boolean tT
    Boolean vV
    Boolean dD
  }
  command <<<
    sraX \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-a" false="" aA} \
      ~{true="-e" false="" eE} \
      ~{true="-id" false="" idId} \
      ~{true="-c" false="" cC} \
      ~{true="-db" false="" dbDb} \
      ~{true="-u" false="" uU} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD}
  >>>
}