version 1.0

task KtImportTaxonomy {
  input {
    String? taxonomyTaxonomy
    String? magnitudesMagnitudes
    String? nameName
  }
  command <<<
    ktImportTaxonomy \
      ~{taxonomyTaxonomy} \
      ~{magnitudesMagnitudes} \
      ~{nameName}
  >>>
}