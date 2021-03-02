version 1.0

task Obdistgen {
  command <<<
    obdistgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}