version 1.0

task Nglviewpostlinksh {
  command <<<
    _nglview_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}