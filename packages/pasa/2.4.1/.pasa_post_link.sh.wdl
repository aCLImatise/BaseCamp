version 1.0

task Pasapostlinksh {
  command <<<
    _pasa_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}