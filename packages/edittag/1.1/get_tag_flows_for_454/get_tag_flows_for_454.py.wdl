version 1.0

task GetTagFlowsFor454py {
  command <<<
    get_tag_flows_for_454_py
  >>>
  output {
    File out_stdout = stdout()
  }
}