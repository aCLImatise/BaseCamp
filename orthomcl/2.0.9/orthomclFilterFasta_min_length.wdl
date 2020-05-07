version 1.0

task OrthomclFilterFastaMinLength {
  input {
    String? inputInputDir
    Int? minMinLength
    Int? maxMaxPercentStops
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta min_length \
      ~{inputInputDir} \
      ~{minMinLength} \
      ~{maxMaxPercentStops} \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}