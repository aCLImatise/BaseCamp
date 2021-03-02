version 1.0

task Fusioninspectorpostlinksh {
  command <<<
    _fusion_inspector_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}