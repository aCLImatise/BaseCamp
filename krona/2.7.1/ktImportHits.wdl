version 1.0

task KtImportHits {
  input {
    String? hitsHits
    String? magnitudesMagnitudes
    String? nameName
  }
  command <<<
    ktImportHits \
      ~{hitsHits} \
      ~{magnitudesMagnitudes} \
      ~{nameName}
  >>>
}