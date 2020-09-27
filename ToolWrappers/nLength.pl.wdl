version 1.0

task NLengthpl {
  command <<<
    nLength_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}