version 1.0

task QuasitoolsDrmutations {
  input {
    Float? min_freq
    Int? reporting_threshold
    File? var_output
  }
  command <<<
    quasitools drmutations \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(reporting_threshold) then ("--reporting_threshold " +  '"' + reporting_threshold + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    min_freq: "the minimum required frequency."
    reporting_threshold: "the minimum percentage required for an entry\\nin the drugresistant report."
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}