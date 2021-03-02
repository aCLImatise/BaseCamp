version 1.0

task Obrms {
  command <<<
    obrms
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}