version 1.0

task Orthomclpostlinksh {
  command <<<
    _orthomcl_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}