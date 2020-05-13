version 1.0

task AnalyzeScaffolds {
  input {
    String gG
    String tT
    String cC
  }
  command <<<
    analyzeScaffolds \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}