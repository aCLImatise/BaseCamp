version 1.0

task DateRepeats {
  command <<<
    DateRepeats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}