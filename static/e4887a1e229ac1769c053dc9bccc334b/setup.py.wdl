version 1.0

task Setuppy {
  command <<<
    setup_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}