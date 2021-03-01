version 1.0

task LDApy {
  command <<<
    LDA_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}