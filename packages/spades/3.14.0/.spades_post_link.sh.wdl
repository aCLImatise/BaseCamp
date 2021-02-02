version 1.0

task Spadespostlinksh {
  command <<<
    _spades_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}