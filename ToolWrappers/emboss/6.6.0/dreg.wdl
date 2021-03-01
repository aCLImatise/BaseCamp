version 1.0

task Dreg {
  command <<<
    dreg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}