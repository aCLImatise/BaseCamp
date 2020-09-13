version 1.0

task Dfastpreunlinksh {
  command <<<
    _dfast_pre_unlink_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}