version 1.0

task OrthomclFilterFastaInputDirMinLengthMaxPercentStopsGoodProteinsFile {
  input {
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta input_dir min_length max_percent_stops good_proteins_file \
      ~{poorPoorProteinsFile}
  >>>
}