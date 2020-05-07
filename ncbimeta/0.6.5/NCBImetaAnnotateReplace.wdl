version 1.0

task NCBImetaAnnotateReplace.py {
  input {
    String anAnNotFile
    String databaseDatabase
    String tableTable
    String anAnNotFile
  }
  command <<<
    NCBImetaAnnotateReplace.py \
      ~{if defined(anAnNotFile) then ("--annotfile " +  '"' + anAnNotFile + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(anAnNotFile) then ("--annotfile " +  '"' + anAnNotFile + '"') else ""}
  >>>
}