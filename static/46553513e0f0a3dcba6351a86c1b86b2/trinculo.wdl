version 1.0

task Trinculo {
  command <<<
    trinculo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}