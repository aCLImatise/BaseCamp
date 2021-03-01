version 1.0

task Prody {
  command <<<
    prody
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}