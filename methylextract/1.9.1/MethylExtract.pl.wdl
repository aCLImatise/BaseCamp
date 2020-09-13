version 1.0

task MethylExtractpl {
  input {
    String? accepted_parameter_check
  }
  command <<<
    MethylExtract_pl \
      ~{if defined(accepted_parameter_check) then ("-h " +  '"' + accepted_parameter_check + '"') else ""}
  >>>
  parameter_meta {
    accepted_parameter_check: "not an accepted parameter, please check spelling and case sensitive"
  }
  output {
    File out_stdout = stdout()
  }
}