version 1.0

task PslPosTarget {
  command <<<
    pslPosTarget
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}