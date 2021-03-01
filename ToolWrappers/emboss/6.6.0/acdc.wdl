version 1.0

task Acdc {
  command <<<
    acdc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}