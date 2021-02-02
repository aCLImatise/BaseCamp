version 1.0

task Pbcopperpostlinksh {
  command <<<
    _pbcopper_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}