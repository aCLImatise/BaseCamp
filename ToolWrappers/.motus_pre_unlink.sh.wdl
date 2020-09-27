version 1.0

task Motuspreunlinksh {
  command <<<
    _motus_pre_unlink_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}