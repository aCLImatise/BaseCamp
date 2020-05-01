version 1.0

task KtImportMGRAST {
  input {
    String? mgrMgrAstTable
    String? nameName
  }
  command <<<
    ktImportMGRAST \
      ~{mgrMgrAstTable} \
      ~{nameName}
  >>>
}