version 1.0

task ParalogClusteringUtil {
  command <<<
    paralog_clustering_util
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}