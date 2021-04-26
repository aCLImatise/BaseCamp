version 1.0

task Deepvariantpreunlinksh {
  command <<<
    _deepvariant_pre_unlink_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}