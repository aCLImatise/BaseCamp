version 1.0

task ChadoImportGff {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String inputInputFile
    String abbreviationAbbreviation
    String fastFastA
    String sequenceSequenceType
    Boolean freshFreshLoad
    Boolean forceForce
    Boolean fullFullGenome
    Boolean fullFullAttributes
    String? dbnameDbname
  }
  command <<<
    chado import gff \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(sequenceSequenceType) then ("--sequence_type " +  '"' + sequenceSequenceType + '"') else ""} \
      ~{true="--fresh_load" false="" freshFreshLoad} \
      ~{true="--force" false="" forceForce} \
      ~{true="--full_genome" false="" fullFullGenome} \
      ~{true="--full_attributes" false="" fullFullAttributes}
  >>>
}