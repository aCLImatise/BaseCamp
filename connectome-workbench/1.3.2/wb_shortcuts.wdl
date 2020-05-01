version 1.0

task WbShortcuts {
  input {
    Boolean versionVersion
    Boolean listListFunctions
    Boolean allAllFunctionsHelp
  }
  command <<<
    wb_shortcuts \
      ~{true="-version" false="" versionVersion} \
      ~{true="-list-functions" false="" listListFunctions} \
      ~{true="-all-functions-help" false="" allAllFunctionsHelp}
  >>>
}