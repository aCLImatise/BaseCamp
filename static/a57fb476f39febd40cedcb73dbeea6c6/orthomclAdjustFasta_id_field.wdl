version 1.0

task OrthomclAdjustFastaIdField {
  input {
    String? taxTaxOnCode
    String? fastFastAFile
    String? idIdField
  }
  command <<<
    orthomclAdjustFasta id_field \
      ~{taxTaxOnCode} \
      ~{fastFastAFile} \
      ~{idIdField}
  >>>
}