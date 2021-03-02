version 1.0

task SpectrastClusterpy {
  command <<<
    spectrast_cluster_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}