version 1.0

task Kofamscanpostlinksh {
  command <<<
    _kofamscan_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}