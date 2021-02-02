version 1.0

task Magpurifypostlinksh {
  command <<<
    _magpurify_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}