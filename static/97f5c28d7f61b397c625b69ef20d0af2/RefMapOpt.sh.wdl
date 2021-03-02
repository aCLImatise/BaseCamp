version 1.0

task RefMapOptsh {
  command <<<
    RefMapOpt_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}