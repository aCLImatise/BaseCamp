version 1.0

task Blockclustpostlinksh {
  command <<<
    _blockclust_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}