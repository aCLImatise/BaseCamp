version 1.0

task KtImportMETAREPEC {
  input {
    String? metaMetaRepFolder
    String? nameName
  }
  command <<<
    ktImportMETAREP-EC \
      ~{metaMetaRepFolder} \
      ~{nameName}
  >>>
}