version 1.0

task AnalyzePosMap {
  input {
    String pP
    String oO
    String gG
    String aA
  }
  command <<<
    analyzePosMap \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""}
  >>>
}