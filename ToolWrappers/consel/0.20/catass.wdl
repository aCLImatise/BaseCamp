version 1.0

task Catass {
  command <<<
    catass
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}