version 1.0

task AnviImportState {
  input {
    String pP
    String sS
    String nN
  }
  command <<<
    anvi-import-state \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}