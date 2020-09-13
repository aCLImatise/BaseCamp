version 1.0

task DasToolpostlinksh {
  command <<<
    _das_tool_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}