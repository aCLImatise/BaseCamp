version 1.0

task Cutoffr {
  command <<<
    cutoff_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}