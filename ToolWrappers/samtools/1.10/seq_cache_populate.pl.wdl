version 1.0

task SeqCachePopulatepl {
  command <<<
    seq_cache_populate_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}