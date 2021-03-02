version 1.0

task Lordectrimsplit {
  command <<<
    lordec_trim_split
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}