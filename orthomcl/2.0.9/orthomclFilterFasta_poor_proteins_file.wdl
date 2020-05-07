version 1.0

task OrthomclFilterFastaPoorProteinsFile {
  input {
    String? inputInputDir
    Int? minMinLength
    Int? maxMaxPercentStops
    String? goodGoodProteinsFile
    String? poorPoorProteinsFile
  }
  command <<<
    orthomclFilterFasta poor_proteins_file \
      ~{inputInputDir} \
      ~{minMinLength} \
      ~{maxMaxPercentStops} \
      ~{goodGoodProteinsFile} \
      ~{poorPoorProteinsFile}
  >>>
}