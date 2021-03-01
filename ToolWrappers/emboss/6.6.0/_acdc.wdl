version 1.0

task Acdc {
  command <<<
    _acdc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}