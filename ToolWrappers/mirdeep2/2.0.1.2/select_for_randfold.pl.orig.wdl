version 1.0

task SelectForRandfoldplorig {
  command <<<
    select_for_randfold_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}