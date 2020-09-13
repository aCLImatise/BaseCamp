version 1.0

task Gtdbtkpostlinksh {
  command <<<
    _gtdbtk_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}