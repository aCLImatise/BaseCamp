version 1.0

task MismatchCounter {
  command <<<
    mismatchCounter
  >>>
  output {
    File out_stdout = stdout()
  }
}