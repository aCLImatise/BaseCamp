version 1.0

task Rampler {
  input {
    Directory? out_directory
    String sequences
  }
  command <<<
    rampler \
      ~{sequences} \
      ~{if (out_directory) then "--out-directory" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_directory: "default: current directory\\npath in which sampled files will be created"
    sequences: "split <sequences> <chunk size>"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_directory = "${in_out_directory}"
  }
}