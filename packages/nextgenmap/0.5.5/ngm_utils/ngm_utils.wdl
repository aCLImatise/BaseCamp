version 1.0

task Ngmutils {
  command <<<
    ngm_utils
  >>>
  output {
    File out_stdout = stdout()
  }
}