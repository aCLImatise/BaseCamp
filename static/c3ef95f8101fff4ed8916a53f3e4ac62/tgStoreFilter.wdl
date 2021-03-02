version 1.0

task TgStoreFilter {
  command <<<
    tgStoreFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}