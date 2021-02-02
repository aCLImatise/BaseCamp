version 1.0

task Mangopreunlinksh {
  command <<<
    _mango_pre_unlink_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}