version 1.0

task AnviExportTable {
  input {
    String tableTable
    Boolean listList
    String fF
    File outputOutputFile
    String? dbDb
  }
  command <<<
    anvi-export-table \
      ~{dbDb} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}