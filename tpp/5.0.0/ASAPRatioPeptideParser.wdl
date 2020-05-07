version 1.0

task ASAPRatioPeptideParser {
  input {
    Boolean lL
    Boolean bB
    Boolean fF
    Boolean rR
    Boolean sS
    Boolean fF
    Boolean cC
    Boolean bB
    Boolean zZ
    Boolean pP
    Boolean iI
    Boolean mM
    Boolean wW
    String? xmlXmlFile
  }
  command <<<
    ASAPRatioPeptideParser \
      ~{xmlXmlFile} \
      ~{true="-l" false="" lL} \
      ~{true="-b" false="" bB} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-S" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-C" false="" cC} \
      ~{true="-B" false="" bB} \
      ~{true="-Z" false="" zZ} \
      ~{true="-p" false="" pP} \
      ~{true="-i" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{true="-w" false="" wW}
  >>>
}