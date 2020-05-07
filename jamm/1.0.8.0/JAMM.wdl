version 1.0

task JAMM.sh {
  input {
    Boolean sS
    Boolean gG
    Boolean oO
    Boolean cC
    Boolean fF
    Boolean rR
    Boolean mM
    Boolean iI
    Boolean bB
    Boolean wW
    Boolean eE
    Boolean dD
    Boolean tT
    Boolean pP
    Boolean tT
  }
  command <<<
    JAMM.sh \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-m" false="" mM} \
      ~{true="-i" false="" iI} \
      ~{true="-b" false="" bB} \
      ~{true="-w" false="" wW} \
      ~{true="-e" false="" eE} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-T" false="" tT}
  >>>
}