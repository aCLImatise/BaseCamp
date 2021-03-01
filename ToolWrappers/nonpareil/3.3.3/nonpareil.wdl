version 1.0

task Nonpareil {
  command <<<
    nonpareil
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}