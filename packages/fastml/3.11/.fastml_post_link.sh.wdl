version 1.0

task Fastmlpostlinksh {
  command <<<
    _fastml_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}