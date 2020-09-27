version 1.0

task AdminCacheFileBuilderpl {
  command <<<
    Admin_CacheFileBuilder_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}