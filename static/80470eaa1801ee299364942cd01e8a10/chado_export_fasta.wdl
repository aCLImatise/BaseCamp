version 1.0

task ChadoExportFasta {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String outputOutputFile
    String abbreviationAbbreviation
    String sequenceSequenceType
    String releaseRelease
    Boolean includeIncludeObsolete
    String? dbnameDbname
  }
  command <<<
    chado export fasta \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{if defined(sequenceSequenceType) then ("--sequence_type " +  '"' + sequenceSequenceType + '"') else ""} \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""} \
      ~{true="--include_obsolete" false="" includeIncludeObsolete}
  >>>
}