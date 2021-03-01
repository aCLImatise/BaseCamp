version 1.0

task NLengthpl {
  command <<<
    nLength_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}