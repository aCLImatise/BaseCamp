version 1.0

task ShiverInitsh {
  command <<<
    shiver_init_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}