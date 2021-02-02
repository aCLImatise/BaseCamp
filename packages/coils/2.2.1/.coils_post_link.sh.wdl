version 1.0

task Coilspostlinksh {
  command <<<
    _coils_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}