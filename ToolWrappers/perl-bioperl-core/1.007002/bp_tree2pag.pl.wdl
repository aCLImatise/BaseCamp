version 1.0

task BpTree2pagpl {
  command <<<
    bp_tree2pag_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}