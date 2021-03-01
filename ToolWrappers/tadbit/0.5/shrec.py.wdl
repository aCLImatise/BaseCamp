version 1.0

task Shrecpy {
  command <<<
    shrec_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}