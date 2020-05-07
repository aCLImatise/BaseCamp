version 1.0

task NGmerge {
  input {
    Boolean oO
    Boolean mM
    Boolean pP
    Boolean aA
    Boolean dD
    Boolean eE
    Boolean sS
    Boolean lL
    Boolean fF
    Boolean cC
    Boolean jJ
    Boolean zZ
    Boolean iI
    Boolean wW
    Boolean gG
    Boolean qQ
    Boolean uU
    Boolean nN
    Boolean vV
  }
  command <<<
    NGmerge \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-s" false="" sS} \
      ~{true="-l" false="" lL} \
      ~{true="-f" false="" fF} \
      ~{true="-c" false="" cC} \
      ~{true="-j" false="" jJ} \
      ~{true="-z" false="" zZ} \
      ~{true="-i" false="" iI} \
      ~{true="-w" false="" wW} \
      ~{true="-g" false="" gG} \
      ~{true="-q" false="" qQ} \
      ~{true="-u" false="" uU} \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV}
  >>>
}