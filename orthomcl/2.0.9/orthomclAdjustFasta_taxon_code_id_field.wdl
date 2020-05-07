version 1.0

task OrthomclAdjustFastaTaxonCodeIdField {
  input {
    String? fastFastAFile
    String? idIdField
  }
  command <<<
    orthomclAdjustFasta taxon_code id_field \
      ~{fastFastAFile} \
      ~{idIdField}
  >>>
}