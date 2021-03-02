version 1.0

task AdminCacheFileBuilderpl {
  command <<<
    Admin_CacheFileBuilder_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}