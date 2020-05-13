version 1.0

task ChadoImportGaf {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String inputInputFile
    String abbreviationAbbreviation
    String annotationAnnotationLevel
    String? dbnameDbname
  }
  command <<<
    chado import gaf \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{if defined(annotationAnnotationLevel) then ("--annotation_level " +  '"' + annotationAnnotationLevel + '"') else ""}
  >>>
}