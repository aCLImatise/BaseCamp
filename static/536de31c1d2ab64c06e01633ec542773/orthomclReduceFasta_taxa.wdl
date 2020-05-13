version 1.0

task OrthomclReduceFastaTaxa {
  input {
    String? fastFastAFile
    String? taxTaxA
  }
  command <<<
    orthomclReduceFasta taxa \
      ~{fastFastAFile} \
      ~{taxTaxA}
  >>>
}