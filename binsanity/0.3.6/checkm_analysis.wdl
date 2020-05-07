version 1.0

task CheckmAnalysis {
  input {
    String checkCheckM
    String fF
  }
  command <<<
    checkm_analysis \
      ~{if defined(checkCheckM) then ("-checkM " +  '"' + checkCheckM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}