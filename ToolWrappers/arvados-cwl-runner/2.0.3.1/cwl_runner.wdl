version 1.0

task Cwlrunner {
  command <<<
    cwl_runner
  >>>
  output {
    File out_stdout = stdout()
  }
}