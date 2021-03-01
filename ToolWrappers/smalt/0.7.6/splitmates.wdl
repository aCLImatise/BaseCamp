version 1.0

task Splitmates {
  command <<<
    splitmates
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}