version 1.0

task Log4netconfig {
  command <<<
    log4net_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}