version 1.0

task ShiverConfigsh {
  command <<<
    shiver_config_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}