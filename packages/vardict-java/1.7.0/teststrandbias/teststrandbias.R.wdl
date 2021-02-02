version 1.0

task TeststrandbiasR {
  command <<<
    teststrandbias_R
  >>>
  output {
    File out_stdout = stdout()
  }
}