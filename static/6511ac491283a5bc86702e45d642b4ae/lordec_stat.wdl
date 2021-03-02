version 1.0

task Lordecstat {
  command <<<
    lordec_stat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}