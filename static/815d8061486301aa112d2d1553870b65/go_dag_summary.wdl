version 1.0

task GoDagSummary.pl {
  input {
    String eE
    String pP
  }
  command <<<
    go-dag-summary.pl \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}