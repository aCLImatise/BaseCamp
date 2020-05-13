version 1.0

task KtImportMETAREPBLAST {
  input {
    String? metaMetaRepFolder
    String? nameName
  }
  command <<<
    ktImportMETAREP-BLAST \
      ~{metaMetaRepFolder} \
      ~{nameName}
  >>>
}