version 1.0

task Treeeventsdlc {
  command <<<
    tree_events_dlc
  >>>
  output {
    File out_stdout = stdout()
  }
}