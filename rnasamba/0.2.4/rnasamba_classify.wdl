version 1.0

task RnasambaClassify {
  input {
    String proteinProteinFastA
    Boolean vV
    String? outputOutputFile
    String? fastFastAFile
    String? weightsWeights
  }
  command <<<
    rnasamba classify \
      ~{outputOutputFile} \
      ~{if defined(proteinProteinFastA) then ("--protein_fasta " +  '"' + proteinProteinFastA + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{fastFastAFile} \
      ~{weightsWeights}
  >>>
}