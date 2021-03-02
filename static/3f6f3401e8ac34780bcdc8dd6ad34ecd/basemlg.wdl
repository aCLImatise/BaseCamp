version 1.0

task Basemlg {
  command <<<
    basemlg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}