version 1.0

task KmerSVDClusteringsh {
  command <<<
    KmerSVDClustering_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}