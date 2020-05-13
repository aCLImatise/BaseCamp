version 1.0

task ChadoExportGff {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String outputOutputFile
    String abbreviationAbbreviation
    Boolean exportExportFastA
    String fastFastAFile
    Boolean includeIncludeObsolete
    String? dbnameDbname
  }
  command <<<
    chado export gff \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{true="--export_fasta" false="" exportExportFastA} \
      ~{if defined(fastFastAFile) then ("--fasta_file " +  '"' + fastFastAFile + '"') else ""} \
      ~{true="--include_obsolete" false="" includeIncludeObsolete}
  >>>
}