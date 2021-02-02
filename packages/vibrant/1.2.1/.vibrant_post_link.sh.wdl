version 1.0

task Vibrantpostlinksh {
  command <<<
    _vibrant_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}