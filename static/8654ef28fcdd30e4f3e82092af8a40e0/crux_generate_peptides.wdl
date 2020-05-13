version 1.0

task CruxGeneratePeptides {
  input {
    String? proteinProteinFastAFile
  }
  command <<<
    crux generate-peptides \
      ~{proteinProteinFastAFile}
  >>>
}