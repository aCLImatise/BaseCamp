version 1.0

task Addles {
  command <<<
    addles
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}