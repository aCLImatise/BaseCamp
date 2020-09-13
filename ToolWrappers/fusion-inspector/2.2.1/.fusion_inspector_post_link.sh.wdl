version 1.0

task Fusioninspectorpostlinksh {
  command <<<
    _fusion_inspector_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}