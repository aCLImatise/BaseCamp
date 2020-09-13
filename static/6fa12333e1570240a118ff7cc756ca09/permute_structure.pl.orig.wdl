version 1.0

task PermuteStructureplorig {
  command <<<
    permute_structure_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}