version 1.0

task SeqCachePopulatepl {
  command <<<
    seq_cache_populate_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}