version 1.0

task Minorseqpostlinksh {
  command <<<
    _minorseq_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}