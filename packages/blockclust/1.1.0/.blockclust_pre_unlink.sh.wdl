version 1.0

task Blockclustpreunlinksh {
  command <<<
    _blockclust_pre_unlink_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}