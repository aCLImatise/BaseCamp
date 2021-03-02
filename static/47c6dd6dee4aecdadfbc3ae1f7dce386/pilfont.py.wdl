version 1.0

task Pilfontpy {
  command <<<
    pilfont_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}