version 1.0

task ParseMismatchpy {
  command <<<
    parseMismatch_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}