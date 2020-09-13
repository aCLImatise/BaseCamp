version 1.0

task Picrust2preunlinksh {
  command <<<
    _picrust2_pre_unlink_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}