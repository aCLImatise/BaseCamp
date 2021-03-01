version 1.0

task Goshowassocsbynodepl {
  command <<<
    go_show_assocs_by_node_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}