version 1.0

task Wrapperpy {
  command <<<
    wrapper_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}