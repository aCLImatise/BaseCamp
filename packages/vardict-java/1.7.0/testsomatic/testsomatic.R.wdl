version 1.0

task TestsomaticR {
  command <<<
    testsomatic_R
  >>>
  output {
    File out_stdout = stdout()
  }
}