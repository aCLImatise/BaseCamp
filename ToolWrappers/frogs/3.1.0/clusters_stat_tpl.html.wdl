version 1.0

task ClustersStatTplhtml {
  command <<<
    clusters_stat_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}