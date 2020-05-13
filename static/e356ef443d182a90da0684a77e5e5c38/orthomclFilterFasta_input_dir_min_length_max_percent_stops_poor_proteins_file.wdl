version 1.0

task OrthomclFilterFastaInputDirMinLengthMaxPercentStopsPoorProteinsFile {
  input {
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta input_dir min_length max_percent_stops poor_proteins_file \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}