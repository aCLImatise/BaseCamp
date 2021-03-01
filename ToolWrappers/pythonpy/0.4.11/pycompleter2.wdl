version 1.0

task Pycompleter2 {
  command <<<
    pycompleter2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}