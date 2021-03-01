version 1.0

task Lofreq2CallPparallelpy {
  command <<<
    lofreq2_call_pparallel_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}