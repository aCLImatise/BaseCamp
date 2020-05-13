version 1.0

task Fastme {
  input {
    Boolean iI
    Boolean uU
    Boolean oO
    Boolean oO
    Boolean iI
    Boolean bB
    Boolean mM
    Boolean dD
    Boolean pP
    Boolean gG
    Boolean nN
    Boolean wW
    Boolean dD
    Boolean bB
    Boolean zZ
    Boolean cC
    Boolean fF
    Boolean tT
    Boolean vV
  }
  command <<<
    fastme \
      ~{true="-i" false="" iI} \
      ~{true="-u" false="" uU} \
      ~{true="-o" false="" oO} \
      ~{true="-O" false="" oO} \
      ~{true="-I" false="" iI} \
      ~{true="-B" false="" bB} \
      ~{true="-m" false="" mM} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{true="-g" false="" gG} \
      ~{true="-n" false="" nN} \
      ~{true="-w" false="" wW} \
      ~{true="-D" false="" dD} \
      ~{true="-b" false="" bB} \
      ~{true="-z" false="" zZ} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-T" false="" tT} \
      ~{true="-v" false="" vV}
  >>>
}