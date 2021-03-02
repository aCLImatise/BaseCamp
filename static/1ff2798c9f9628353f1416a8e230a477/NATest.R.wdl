version 1.0

task NATestR {
  command <<<
    NATest_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}