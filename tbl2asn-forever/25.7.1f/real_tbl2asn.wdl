version 1.0

task RealTbl2asn {
  input {
    Boolean tT
    Boolean aA
    Boolean fF
    Boolean aA
    Boolean cC
    Boolean nN
    Boolean jJ
    Boolean yY
    Boolean yY
    Boolean dD
    Boolean fF
    Boolean kK
    Boolean vV
    Boolean gG
    Boolean qQ
    Boolean hH
    Boolean zZ
    Boolean cC
    Boolean zZ
    Boolean xX
    Boolean wW
    Boolean mM
    Boolean lL
    Boolean mM
  }
  command <<<
    real-tbl2asn \
      ~{true="-t" false="" tT} \
      ~{true="-a" false="" aA} \
      ~{true="-F" false="" fF} \
      ~{true="-A" false="" aA} \
      ~{true="-C" false="" cC} \
      ~{true="-n" false="" nN} \
      ~{true="-j" false="" jJ} \
      ~{true="-y" false="" yY} \
      ~{true="-Y" false="" yY} \
      ~{true="-D" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{true="-k" false="" kK} \
      ~{true="-V" false="" vV} \
      ~{true="-G" false="" gG} \
      ~{true="-Q" false="" qQ} \
      ~{true="-H" false="" hH} \
      ~{true="-Z" false="" zZ} \
      ~{true="-c" false="" cC} \
      ~{true="-z" false="" zZ} \
      ~{true="-X" false="" xX} \
      ~{true="-w" false="" wW} \
      ~{true="-M" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-m" false="" mM}
  >>>
}