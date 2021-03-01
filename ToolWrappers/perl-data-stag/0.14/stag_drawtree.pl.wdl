version 1.0

task Stagdrawtreepl {
  command <<<
    stag_drawtree_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}