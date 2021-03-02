version 1.0

task Splitpy {
  command <<<
    split_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}