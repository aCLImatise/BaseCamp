version 1.0

task HmClusterPredictpy {
  command <<<
    hm_cluster_predict_py
  >>>
  output {
    File out_stdout = stdout()
  }
}