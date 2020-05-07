version 1.0

task OrthomclAdjustFastaFastaFile {
  input {
    String? taxTaxOnCode
    String? fastFastAFile
    String? idIdField
  }
  command <<<
    orthomclAdjustFasta fasta_file \
      ~{taxTaxOnCode} \
      ~{fastFastAFile} \
      ~{idIdField}
  >>>
}