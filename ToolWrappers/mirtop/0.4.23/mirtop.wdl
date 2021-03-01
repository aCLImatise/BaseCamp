version 1.0

task Mirtop {
  command <<<
    mirtop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}