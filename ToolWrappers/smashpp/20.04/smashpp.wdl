version 1.0

task Smashpp {
  command <<<
    smashpp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}