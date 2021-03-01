version 1.0

task GroupHumann2UnirefAbundancesToGopostlinksh {
  command <<<
    _group_humann2_uniref_abundances_to_go_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}