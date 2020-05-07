version 1.0

task HgLoadOutJoined {
  input {
    String tabTabFile
    String tableTable
  }
  command <<<
    hgLoadOutJoined \
      ~{if defined(tabTabFile) then ("-tabFile " +  '"' + tabTabFile + '"') else ""} \
      ~{if defined(tableTable) then ("-table " +  '"' + tableTable + '"') else ""}
  >>>
}