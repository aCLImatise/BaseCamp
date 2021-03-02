version 1.0

task ParseFDROpy {
  command <<<
    parseFDR_o_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}