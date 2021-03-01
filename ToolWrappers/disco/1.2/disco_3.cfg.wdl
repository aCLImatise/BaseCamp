version 1.0

task Disco3cfg {
  command <<<
    disco_3_cfg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}