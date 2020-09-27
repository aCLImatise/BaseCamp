version 1.0

task ParseFDROpy {
  command <<<
    parseFDR_o_py
  >>>
  output {
    File out_stdout = stdout()
  }
}