version 1.0

task TgStoreFilter {
  command <<<
    tgStoreFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}