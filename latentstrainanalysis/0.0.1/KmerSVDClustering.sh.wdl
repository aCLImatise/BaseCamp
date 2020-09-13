version 1.0

task KmerSVDClusteringsh {
  command <<<
    KmerSVDClustering_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}