version 1.0

task CompareMotifpl {
  command <<<
    compare_motif_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}