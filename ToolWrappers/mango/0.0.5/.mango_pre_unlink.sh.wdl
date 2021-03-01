version 1.0

task Mangopreunlinksh {
  command <<<
    _mango_pre_unlink_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}