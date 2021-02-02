version 1.0

task Kggseqpostlinksh {
  command <<<
    _kggseq_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}