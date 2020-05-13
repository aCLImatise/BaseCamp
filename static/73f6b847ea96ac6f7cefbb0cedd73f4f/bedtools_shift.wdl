version 1.0

task BedtoolsShift {
  input {
    Boolean sS
    Boolean pP
    Boolean mM
    Boolean pctPct
    String headerHeader
    String? chr18Chr18Gl000207Random
  }
  command <<<
    bedtools shift \
      ~{chr18Chr18Gl000207Random} \
      ~{true="-s" false="" sS} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-pct" false="" pctPct} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""}
  >>>
}