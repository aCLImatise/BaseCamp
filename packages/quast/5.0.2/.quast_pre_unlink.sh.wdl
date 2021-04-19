version 1.0

task Quastpreunlinksh {
  command <<<
    _quast_pre_unlink_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}