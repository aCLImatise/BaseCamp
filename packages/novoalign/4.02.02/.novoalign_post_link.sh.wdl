version 1.0

task Novoalignpostlinksh {
  command <<<
    _novoalign_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}