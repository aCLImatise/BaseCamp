version 1.0

task Ngmcoredebug {
  command <<<
    ngm_core_debug
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}