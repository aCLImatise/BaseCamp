version 1.0

task ValidateFilesPairedTagAlign {
  input {
    String? not_valid_option
  }
  command <<<
    validateFiles pairedTagAlign \
      ~{if defined(not_valid_option) then ("-h " +  '"' + not_valid_option + '"') else ""}
  >>>
  parameter_meta {
    not_valid_option: "not a valid option"
  }
  output {
    File out_stdout = stdout()
  }
}