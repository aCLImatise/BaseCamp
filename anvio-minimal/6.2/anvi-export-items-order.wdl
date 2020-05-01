version 1.0

task AnviExportItemsOrder {
  input {
    String pP
    String nameName
    File outputOutputFile
  }
  command <<<
    anvi-export-items-order \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}