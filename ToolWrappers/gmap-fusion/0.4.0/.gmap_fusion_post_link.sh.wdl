version 1.0

task Gmapfusionpostlinksh {
  command <<<
    _gmap_fusion_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}