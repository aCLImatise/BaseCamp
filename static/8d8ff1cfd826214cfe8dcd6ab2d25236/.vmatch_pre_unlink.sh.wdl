version 1.0

task Vmatchpreunlinksh {
  command <<<
    _vmatch_pre_unlink_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}