version 1.0

task VcfValidator {
  input {
    Boolean duplicatesDuplicates
    Boolean uniqueUniqueMessages
    String? optionsOptions
    File? fileFileVcfGz
  }
  command <<<
    vcf-validator \
      ~{optionsOptions} \
      ~{true="--duplicates" false="" duplicatesDuplicates} \
      ~{true="--unique-messages" false="" uniqueUniqueMessages} \
      ~{fileFileVcfGz}
  >>>
}