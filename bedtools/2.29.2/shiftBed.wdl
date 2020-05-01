version 1.0

task ShiftBed {
  input {
    Boolean sS
    Boolean pP
    Boolean mM
    Boolean pctPct
    String headerHeader
    String? chr18Chr18Gl000207Random
  }
  command <<<
    shiftBed \
      ~{chr18Chr18Gl000207Random} \
      ~{true="-s" false="" sS} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-pct" false="" pctPct} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""}
  >>>
}