version 1.0

task Ngmutilsdebug {
  command <<<
    ngm_utils_debug
  >>>
  output {
    File out_stdout = stdout()
  }
}