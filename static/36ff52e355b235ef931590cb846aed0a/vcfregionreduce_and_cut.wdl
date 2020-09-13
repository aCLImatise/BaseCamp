version 1.0

task VcfregionreduceAndCut {
  command <<<
    vcfregionreduce_and_cut
  >>>
  output {
    File out_stdout = stdout()
  }
}