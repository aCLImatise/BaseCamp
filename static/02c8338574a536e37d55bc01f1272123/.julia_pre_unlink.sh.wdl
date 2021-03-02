version 1.0

task Juliapreunlinksh {
  command <<<
    _julia_pre_unlink_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}