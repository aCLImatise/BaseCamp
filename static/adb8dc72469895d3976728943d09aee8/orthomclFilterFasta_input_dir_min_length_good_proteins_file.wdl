version 1.0

task OrthomclFilterFastaInputDirMinLengthGoodProteinsFile {
  input {
    Int? maxMaxPercentStops
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta input_dir min_length good_proteins_file \
      ~{maxMaxPercentStops} \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}