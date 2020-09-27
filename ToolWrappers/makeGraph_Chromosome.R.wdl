version 1.0

task MakeGraphChromosomeR {
  command <<<
    makeGraph_Chromosome_R
  >>>
  output {
    File out_stdout = stdout()
  }
}