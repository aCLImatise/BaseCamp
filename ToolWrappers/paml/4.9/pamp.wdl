version 1.0

task Pamp {
  command <<<
    pamp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}