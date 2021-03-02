version 1.0

task Gmapfusionpostlinksh {
  command <<<
    _gmap_fusion_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}