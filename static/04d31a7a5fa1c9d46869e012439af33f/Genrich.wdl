version 1.0

task Genrich {
  input {
    Boolean tT
    Boolean oO
    Boolean cC
    Boolean fF
    Boolean kK
    Boolean bB
    Boolean rR
    Boolean rR
    Boolean eE
    Boolean eE
    Boolean mM
    Boolean sS
    Boolean yY
    Boolean wW
    Boolean xX
    Boolean jJ
    Boolean dD
    Boolean dD
    Boolean pP
    Boolean qQ
    Boolean aA
    Boolean lL
    Boolean gG
    Boolean xX
    Boolean pP
    Boolean zZ
    Boolean vV
  }
  command <<<
    Genrich \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-k" false="" kK} \
      ~{true="-b" false="" bB} \
      ~{true="-R" false="" rR} \
      ~{true="-r" false="" rR} \
      ~{true="-e" false="" eE} \
      ~{true="-E" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-y" false="" yY} \
      ~{true="-w" false="" wW} \
      ~{true="-x" false="" xX} \
      ~{true="-j" false="" jJ} \
      ~{true="-d" false="" dD} \
      ~{true="-D" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-a" false="" aA} \
      ~{true="-l" false="" lL} \
      ~{true="-g" false="" gG} \
      ~{true="-X" false="" xX} \
      ~{true="-P" false="" pP} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV}
  >>>
}