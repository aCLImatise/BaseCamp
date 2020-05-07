version 1.0

task KtImportKrona {
  input {
    String? kronaKronaChart
    String? magnitudesMagnitudes
    String? nameName
  }
  command <<<
    ktImportKrona \
      ~{kronaKronaChart} \
      ~{magnitudesMagnitudes} \
      ~{nameName}
  >>>
}