version 1.0

task ChadoImportFasta {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String inputInputFile
    String abbreviationAbbreviation
    String sequenceSequenceType
    String? dbnameDbname
  }
  command <<<
    chado import fasta \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{if defined(sequenceSequenceType) then ("--sequence_type " +  '"' + sequenceSequenceType + '"') else ""}
  >>>
}