version 1.0

task Lofreq2CallPparallelpy {
  command <<<
    lofreq2_call_pparallel_py
  >>>
  output {
    File out_stdout = stdout()
  }
}