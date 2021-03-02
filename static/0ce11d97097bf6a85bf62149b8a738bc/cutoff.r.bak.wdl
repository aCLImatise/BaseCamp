version 1.0

task Cutoffrbak {
  command <<<
    cutoff_r_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}