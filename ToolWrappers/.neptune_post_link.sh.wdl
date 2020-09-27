version 1.0

task Neptunepostlinksh {
  command <<<
    _neptune_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}