version 1.0

task ImportIgenome {
  input {
    File pP
    String gG
    String cC
  }
  command <<<
    import_igenome \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}