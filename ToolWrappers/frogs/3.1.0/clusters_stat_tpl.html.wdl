version 1.0

task ClustersStatTplhtml {
  command <<<
    clusters_stat_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}