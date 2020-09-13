version 1.0

task Kronapostlinksh {
  command <<<
    _krona_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}