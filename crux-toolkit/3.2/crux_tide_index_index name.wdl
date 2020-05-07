version 1.0

task CruxTideIndexIndex name {
  input {
    String? proteinProteinFastAFile
    String? indexIndexName
  }
  command <<<
    crux tide-index index name \
      ~{proteinProteinFastAFile} \
      ~{indexIndexName}
  >>>
}