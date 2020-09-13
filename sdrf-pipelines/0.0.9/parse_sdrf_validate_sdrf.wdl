version 1.0

task ParseSdrfValidatesdrf {
  input {
    File? sd_rf_file
    Boolean? template
    Boolean? check_ms
  }
  command <<<
    parse_sdrf validate_sdrf \
      ~{if defined(sd_rf_file) then ("--sdrf_file " +  '"' + sd_rf_file + '"') else ""} \
      ~{if (template) then "--template" else ""} \
      ~{if (check_ms) then "--check_ms" else ""}
  >>>
  parameter_meta {
    sd_rf_file: "SDRF file to be validated"
    template: "[default|human|vertebrates|nonvertebrates|plants|cell_lines]\\nselect the template that will be use to\\nvalidate the file (default: default)"
    check_ms: "check mass spectrometry fields in SDRF (e.g.\\npostranslational modifications)"
  }
  output {
    File out_stdout = stdout()
  }
}