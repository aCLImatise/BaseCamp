version 1.0

task AddLengthspl {
  command <<<
    AddLengths_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}