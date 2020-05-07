version 1.0

task SubColumn {
  input {
    String columnColumn
    File printPrint
    String? columnColumn
    String? inInTab
    String? subtabSubtab
    String? outOutTab
  }
  command <<<
    subColumn \
      ~{columnColumn} \
      ~{if defined(columnColumn) then ("- Column " +  '"' + columnColumn + '"') else ""} \
      ~{if defined(printPrint) then ("- Print " +  '"' + printPrint + '"') else ""} \
      ~{inInTab} \
      ~{subtabSubtab} \
      ~{outOutTab}
  >>>
}