version 1.0

task ReverseSatsumaOut {
  input {
    Boolean? string_input_file
  }
  command <<<
    ReverseSatsumaOut \
      ~{if (string_input_file) then "-i" else ""}
  >>>
  parameter_meta {
    string_input_file: "<string> : input satsuma file"
  }
  output {
    File out_stdout = stdout()
  }
}