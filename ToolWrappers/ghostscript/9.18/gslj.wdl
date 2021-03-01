version 1.0

task Gslj {
  command <<<
    gslj
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}