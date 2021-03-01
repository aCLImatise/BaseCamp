version 1.0

task Ngmdebug {
  command <<<
    ngm_debug
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}