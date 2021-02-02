version 1.0

task BpTree2pagpl {
  command <<<
    bp_tree2pag_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}