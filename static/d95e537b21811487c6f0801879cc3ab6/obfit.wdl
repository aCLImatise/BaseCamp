version 1.0

task Obfit {
  command <<<
    obfit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}