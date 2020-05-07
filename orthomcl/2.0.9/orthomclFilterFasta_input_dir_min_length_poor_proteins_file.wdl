version 1.0

task OrthomclFilterFastaInputDirMinLengthPoorProteinsFile {
  input {
    Int? maxMaxPercentStops
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta input_dir min_length poor_proteins_file \
      ~{maxMaxPercentStops} \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}