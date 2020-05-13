version 1.0

task AnalyzeBest {
  input {
    String gG
    String eE
    String cC
  }
  command <<<
    analyzeBest \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}