version 1.0

task Motuspreunlinksh {
  command <<<
    _motus_pre_unlink_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}