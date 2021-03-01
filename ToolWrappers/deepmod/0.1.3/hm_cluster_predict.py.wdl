version 1.0

task HmClusterPredictpy {
  command <<<
    hm_cluster_predict_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}