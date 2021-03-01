version 1.0

task Cwlrunner {
  command <<<
    cwl_runner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}