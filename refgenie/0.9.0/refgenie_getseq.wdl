version 1.0

task RefgenieGetseq {
  input {
    String cC
    String gG
    String lL
  }
  command <<<
    refgenie getseq \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}