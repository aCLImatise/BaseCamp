version 1.0

task MzXML2Search {
  input {
    Boolean fF
    Boolean lL
    Boolean cC
    Boolean cC
    Boolean bB
    Boolean tT
    Boolean pP
    Boolean nN
    Boolean pmPm
    Boolean piPi
    Boolean iI
    Boolean mM
    Boolean aA
    Boolean zZ
    Boolean xX
    Boolean qQ
    Boolean gG
  }
  command <<<
    MzXML2Search \
      ~{true="-F" false="" fF} \
      ~{true="-L" false="" lL} \
      ~{true="-C" false="" cC} \
      ~{true="-c" false="" cC} \
      ~{true="-B" false="" bB} \
      ~{true="-T" false="" tT} \
      ~{true="-P" false="" pP} \
      ~{true="-N" false="" nN} \
      ~{true="-pm" false="" pmPm} \
      ~{true="-pi" false="" piPi} \
      ~{true="-I" false="" iI} \
      ~{true="-M" false="" mM} \
      ~{true="-A" false="" aA} \
      ~{true="-Z" false="" zZ} \
      ~{true="-X" false="" xX} \
      ~{true="-Q" false="" qQ} \
      ~{true="-G" false="" gG}
  >>>
}