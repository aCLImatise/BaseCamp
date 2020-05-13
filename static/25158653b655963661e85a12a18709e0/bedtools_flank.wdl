version 1.0

task BedtoolsFlank {
  input {
    Boolean bB
    Boolean lL
    Boolean rR
    Boolean sS
    Boolean pctPct
    String headerHeader
    String? chr18Chr18Gl000207Random
  }
  command <<<
    bedtools flank \
      ~{chr18Chr18Gl000207Random} \
      ~{true="-b" false="" bB} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-pct" false="" pctPct} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""}
  >>>
}