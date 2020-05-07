version 1.0

task XmlPp {
  input {
    Boolean iI
    String sS
    Boolean pP
    String eE
    Boolean lL
    File fF
    Boolean vV
    String stopStop
  }
  command <<<
    xml_pp \
      ~{true="-i" false="" iI} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(stopStop) then ("--  stop " +  '"' + stopStop + '"') else ""}
  >>>
}