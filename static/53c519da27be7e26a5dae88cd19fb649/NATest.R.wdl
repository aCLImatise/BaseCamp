version 1.0

task NATestR {
  command <<<
    NATest_R
  >>>
  output {
    File out_stdout = stdout()
  }
}