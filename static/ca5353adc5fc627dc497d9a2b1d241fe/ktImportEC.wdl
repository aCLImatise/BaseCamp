version 1.0

task KtImportEC {
  input {
    String? ecEcNumbers
    String? magnitudesMagnitudes
    String? nameName
  }
  command <<<
    ktImportEC \
      ~{ecEcNumbers} \
      ~{magnitudesMagnitudes} \
      ~{nameName}
  >>>
}