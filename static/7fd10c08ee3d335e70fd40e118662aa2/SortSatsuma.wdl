version 1.0

task SortSatsuma {
  input {
    Boolean? string_input_file
  }
  command <<<
    SortSatsuma \
      ~{if (string_input_file) then "-i" else ""}
  >>>
  parameter_meta {
    string_input_file: "<string> : input file"
  }
  output {
    File out_stdout = stdout()
  }
}