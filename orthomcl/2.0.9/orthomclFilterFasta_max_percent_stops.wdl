version 1.0

task OrthomclFilterFastaMaxPercentStops {
  input {
    String? inputInputDir
    Int? minMinLength
    Int? maxMaxPercentStops
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta max_percent_stops \
      ~{inputInputDir} \
      ~{minMinLength} \
      ~{maxMaxPercentStops} \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}