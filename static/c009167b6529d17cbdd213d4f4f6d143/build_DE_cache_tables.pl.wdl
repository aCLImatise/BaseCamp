version 1.0

task BuildDECacheTablespl {
  command <<<
    build_DE_cache_tables_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}