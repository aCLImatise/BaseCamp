version 1.0

task PostProcsh {
  command <<<
    post_proc_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}