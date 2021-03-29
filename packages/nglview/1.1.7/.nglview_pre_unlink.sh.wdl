version 1.0

task Nglviewpreunlinksh {
  command <<<
    _nglview_pre_unlink_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}