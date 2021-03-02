version 1.0

task Cyclone {
  command <<<
    cyclone
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}