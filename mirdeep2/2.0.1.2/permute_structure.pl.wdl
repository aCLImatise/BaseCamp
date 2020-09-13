version 1.0

task PermuteStructurepl {
  command <<<
    permute_structure_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}