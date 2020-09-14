version 1.0

task Sratoolspostlinksh {
  command <<<
    _sra_tools_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}