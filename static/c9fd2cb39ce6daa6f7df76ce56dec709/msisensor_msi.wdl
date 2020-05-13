version 1.0

task MsisensorMsi {
  input {
    Boolean dD
    Boolean nN
    Boolean tT
    Boolean oO
    Boolean eE
    Boolean fF
    Boolean iI
    Boolean cC
    Boolean rR
    Boolean lL
    Boolean pP
    Boolean mM
    Boolean qQ
    Boolean sS
    Boolean wW
    Boolean uU
    Boolean bB
    Boolean xX
    Boolean yY
  }
  command <<<
    msisensor msi \
      ~{true="-d" false="" dD} \
      ~{true="-n" false="" nN} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-q" false="" qQ} \
      ~{true="-s" false="" sS} \
      ~{true="-w" false="" wW} \
      ~{true="-u" false="" uU} \
      ~{true="-b" false="" bB} \
      ~{true="-x" false="" xX} \
      ~{true="-y" false="" yY}
  >>>
}