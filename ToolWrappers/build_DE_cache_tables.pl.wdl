version 1.0

task BuildDECacheTablespl {
  command <<<
    build_DE_cache_tables_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}