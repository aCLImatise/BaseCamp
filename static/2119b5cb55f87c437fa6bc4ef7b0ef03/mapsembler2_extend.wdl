version 1.0

task Mapsembler2Extend {
  input {
    File oO
    String pP
    String hH
  }
  command <<<
    mapsembler2_extend \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}