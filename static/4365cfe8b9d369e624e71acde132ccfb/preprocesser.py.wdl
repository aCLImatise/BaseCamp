version 1.0

task Preprocesserpy {
  command <<<
    preprocesser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}