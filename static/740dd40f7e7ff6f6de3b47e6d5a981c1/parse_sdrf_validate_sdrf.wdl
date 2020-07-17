version 1.0

task ParseSdrfValidateSdrf {
  input {
    String? sd_rf_file
    Boolean? template
    Boolean? check_ms
  }
  command <<<
    parse_sdrf validate-sdrf \
      ~{if defined(sd_rf_file) then ("--sdrf_file " +  '"' + sd_rf_file + '"') else ""} \
      ~{true="--template" false="" template} \
      ~{true="--check_ms" false="" check_ms}
  >>>
  parameter_meta {
    sd_rf_file: "SDRF file to be validated"
    template: "[default|human|vertebrates|nonvertebrates|plants|cell_lines] select the template that will be use to validate the file (default: default)"
    check_ms: "check mass spectrometry fields in SDRF (e.g. postranslational modifications)"
  }
}