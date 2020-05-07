version 1.0

task HgLoadOut {
  input {
    String tabTabFile
    String splitSplit
    String tableTable
  }
  command <<<
    hgLoadOut \
      ~{if defined(tabTabFile) then ("-tabFile " +  '"' + tabTabFile + '"') else ""} \
      ~{if defined(splitSplit) then ("-split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(tableTable) then ("-table " +  '"' + tableTable + '"') else ""}
  >>>
}