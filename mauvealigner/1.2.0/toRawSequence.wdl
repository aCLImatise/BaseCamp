version 1.0

task ToRawSequence {
  command <<<
    toRawSequence
  >>>
  output {
    File out_stdout = stdout()
  }
}