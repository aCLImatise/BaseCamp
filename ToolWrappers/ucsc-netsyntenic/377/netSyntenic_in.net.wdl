version 1.0

task NetSyntenicInnet {
  input {
    String? not_valid_option
  }
  command <<<
    netSyntenic in_net \
      ~{if defined(not_valid_option) then ("-h " +  '"' + not_valid_option + '"') else ""}
  >>>
  parameter_meta {
    not_valid_option: "not a valid option"
  }
  output {
    File out_stdout = stdout()
  }
}