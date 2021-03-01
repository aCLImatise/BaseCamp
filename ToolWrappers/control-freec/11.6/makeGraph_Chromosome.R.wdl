version 1.0

task MakeGraphChromosomeR {
  command <<<
    makeGraph_Chromosome_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}