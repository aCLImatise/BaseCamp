version 1.0

task OrthomclFilterFastaGoodProteinsFile {
  input {
    String? inputInputDir
    Int? minMinLength
    Int? maxMaxPercentStops
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta good_proteins_file \
      ~{inputInputDir} \
      ~{minMinLength} \
      ~{maxMaxPercentStops} \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}