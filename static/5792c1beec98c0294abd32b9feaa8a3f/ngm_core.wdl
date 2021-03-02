version 1.0

task Ngmcore {
  command <<<
    ngm_core
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}