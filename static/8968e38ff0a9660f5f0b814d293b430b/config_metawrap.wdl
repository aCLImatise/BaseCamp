version 1.0

task Configmetawrap {
  command <<<
    config_metawrap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}