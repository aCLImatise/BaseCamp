version 1.0

task OrthomclFilterFastaInputDirMaxPercentStops {
  input {
    Int? minMinLength
    Int? maxMaxPercentStops
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta input_dir max_percent_stops \
      ~{minMinLength} \
      ~{maxMaxPercentStops} \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}