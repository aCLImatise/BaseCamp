version 1.0

task FaToFastqInfa {
  input {
    String? not_valid_option
  }
  command <<<
    faToFastq in_fa \
      ~{if defined(not_valid_option) then ("-h " +  '"' + not_valid_option + '"') else ""}
  >>>
  parameter_meta {
    not_valid_option: "not a valid option"
  }
  output {
    File out_stdout = stdout()
  }
}