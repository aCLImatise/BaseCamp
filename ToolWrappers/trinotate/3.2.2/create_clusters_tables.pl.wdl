version 1.0

task CreateClustersTablespl {
  command <<<
    create_clusters_tables_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}