version 1.0

task Bamalignfrac {
  command <<<
    bamalignfrac
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}