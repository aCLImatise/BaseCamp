version 1.0

task KtImportGalaxy {
  input {
    String? taxTaxRep
    String? nameName
  }
  command <<<
    ktImportGalaxy \
      ~{taxTaxRep} \
      ~{nameName}
  >>>
}