version 1.0

task Sample {
  command <<<
    sample
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}