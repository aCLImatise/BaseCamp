version 1.0

task Bam2fastxpostlinksh {
  command <<<
    _bam2fastx_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}