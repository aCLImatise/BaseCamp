version 1.0

task Wrapper {
  command <<<
    wrapper
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}