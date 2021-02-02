version 1.0

task ChainMatches {
  input {
    File? string_output_binary
  }
  command <<<
    ChainMatches \
      ~{if (string_output_binary) then "-o" else ""}
  >>>
  parameter_meta {
    string_output_binary: "<string> : output file (binary)"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_binary = "${in_string_output_binary}"
  }
}