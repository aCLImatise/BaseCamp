version 1.0

task Disco2cfg {
  command <<<
    disco_2_cfg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}