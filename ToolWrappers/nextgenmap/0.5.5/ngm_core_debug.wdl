version 1.0

task Ngmcoredebug {
  command <<<
    ngm_core_debug
  >>>
  output {
    File out_stdout = stdout()
  }
}