version 1.0

task Readshifterpl {
  command <<<
    readshifter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}