version 1.0

task Plasmidfinderpostlinksh {
  command <<<
    _plasmidfinder_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}