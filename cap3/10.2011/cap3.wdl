version 1.0

task Cap3 {
  input {
    Boolean aA
    Boolean bB
    Boolean cC
    Boolean dD
    Boolean eE
    Boolean fF
    Boolean gG
    Boolean iI
    Boolean jJ
    Boolean kK
    Boolean mM
    Boolean nN
    Boolean oO
    Boolean pP
    Boolean rR
    Boolean sS
    Boolean tT
    Boolean uU
    Boolean vV
    Boolean wW
    Boolean xX
    Boolean yY
    Boolean zZ
    File? fileFileOfReads
  }
  command <<<
    cap3 \
      ~{fileFileOfReads} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-j" false="" jJ} \
      ~{true="-k" false="" kK} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-u" false="" uU} \
      ~{true="-v" false="" vV} \
      ~{true="-w" false="" wW} \
      ~{true="-x" false="" xX} \
      ~{true="-y" false="" yY} \
      ~{true="-z" false="" zZ}
  >>>
}