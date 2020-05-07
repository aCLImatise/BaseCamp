version 1.0

task XPressPeptideParser {
  input {
    Boolean mM
    Boolean aA
    Boolean nN
    Boolean bB
    Boolean fF
    Boolean fF
    Boolean lL
    Boolean hH
    Boolean mM
    Boolean nN
    Boolean oO
    Boolean pP
    Boolean cC
    Boolean cC
    Boolean pP
    Boolean qQ
    Boolean iI
    Boolean lL
    Boolean dD
    Boolean eE
    String? xmlXmlFile
  }
  command <<<
    XPressPeptideParser \
      ~{xmlXmlFile} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-b" false="" bB} \
      ~{true="-f" false="" fF} \
      ~{true="-F" false="" fF} \
      ~{true="-L" false="" lL} \
      ~{true="-H" false="" hH} \
      ~{true="-M" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="-O" false="" oO} \
      ~{true="-P" false="" pP} \
      ~{true="-C" false="" cC} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-d" false="" dD} \
      ~{true="-E" false="" eE}
  >>>
}