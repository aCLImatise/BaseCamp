version 1.0

task Semetapostlinksh {
  command <<<
    _semeta_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}