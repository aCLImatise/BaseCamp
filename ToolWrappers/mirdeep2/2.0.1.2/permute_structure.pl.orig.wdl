version 1.0

task PermuteStructureplorig {
  command <<<
    permute_structure_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}