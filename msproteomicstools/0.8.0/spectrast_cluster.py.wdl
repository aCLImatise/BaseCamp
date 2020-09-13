version 1.0

task SpectrastClusterpy {
  command <<<
    spectrast_cluster_py
  >>>
  output {
    File out_stdout = stdout()
  }
}