version 1.0

task Bax2bampostlinksh {
  command <<<
    _bax2bam_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}