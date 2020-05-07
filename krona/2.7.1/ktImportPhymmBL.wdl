version 1.0

task KtImportPhymmBL {
  input {
    String? phyPhyMmBlResults
    String? magnitudesMagnitudes
    String? nameName
  }
  command <<<
    ktImportPhymmBL \
      ~{phyPhyMmBlResults} \
      ~{magnitudesMagnitudes} \
      ~{nameName}
  >>>
}