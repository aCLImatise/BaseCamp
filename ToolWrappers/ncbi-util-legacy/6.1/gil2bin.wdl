version 1.0

task Gil2bin {
  input {
    Boolean? input_gilist
    File? output_binary_gilist
    Boolean? reverse_mode_binary
  }
  command <<<
    gil2bin \
      ~{if (input_gilist) then "-i" else ""} \
      ~{if (output_binary_gilist) then "-o" else ""} \
      ~{if (reverse_mode_binary) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_gilist: "Input gilist [File In]"
    output_binary_gilist: "output (binary) gilist [File In]"
    reverse_mode_binary: "Reverse mode (binary to text) [T/F]  Optional\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_binary_gilist = "${in_output_binary_gilist}"
  }
}