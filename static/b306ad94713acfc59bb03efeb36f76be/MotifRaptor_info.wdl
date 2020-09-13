version 1.0

task MotifRaptorInfo {
  command <<<
    MotifRaptor info
  >>>
  output {
    File out_stdout = stdout()
  }
}