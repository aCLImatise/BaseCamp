version 1.0

task VcfregionreduceAndCut {
  command <<<
    vcfregionreduce_and_cut
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}