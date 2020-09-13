version 1.0

task Buscopostlinksh {
  command <<<
    _busco_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}