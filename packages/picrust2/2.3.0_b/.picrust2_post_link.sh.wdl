version 1.0

task Picrust2postlinksh {
  command <<<
    _picrust2_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}