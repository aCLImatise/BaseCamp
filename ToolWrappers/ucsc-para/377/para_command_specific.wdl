version 1.0

task ParaCommandspecific {
  input {
    String? not_valid_option
  }
  command <<<
    para command_specific \
      ~{if defined(not_valid_option) then ("-h " +  '"' + not_valid_option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    not_valid_option: "not a valid option"
  }
  output {
    File out_stdout = stdout()
  }
}