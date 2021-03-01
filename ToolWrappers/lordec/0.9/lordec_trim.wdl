version 1.0

task Lordectrim {
  command <<<
    lordec_trim
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}