version 1.0

task Configini {
  command <<<
    config_ini
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}