version 1.0

task Simwalk2 {
  command <<<
    simwalk2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}