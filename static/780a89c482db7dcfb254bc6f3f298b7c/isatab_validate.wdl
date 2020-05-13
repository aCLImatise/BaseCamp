version 1.0

task IsatabValidate {
  input {
    String inputInputInvestigationFile
    Boolean showShowDuplicateWarnings
  }
  command <<<
    isatab_validate \
      ~{if defined(inputInputInvestigationFile) then ("--input-investigation-file " +  '"' + inputInputInvestigationFile + '"') else ""} \
      ~{true="--show-duplicate-warnings" false="" showShowDuplicateWarnings}
  >>>
}