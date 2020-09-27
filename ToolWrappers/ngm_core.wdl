version 1.0

task Ngmcore {
  command <<<
    ngm_core
  >>>
  output {
    File out_stdout = stdout()
  }
}