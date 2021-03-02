version 1.0

task ClumpMaker {
  command <<<
    clumpMaker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}