version 1.0

task Byobuconfig {
  command <<<
    byobu_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}