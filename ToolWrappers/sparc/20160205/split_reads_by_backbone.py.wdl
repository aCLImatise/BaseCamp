version 1.0

task SplitReadsByBackbonepy {
  command <<<
    split_reads_by_backbone_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}