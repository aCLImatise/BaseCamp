version 1.0

task Ngmdebug {
  command <<<
    ngm_debug
  >>>
  output {
    File out_stdout = stdout()
  }
}