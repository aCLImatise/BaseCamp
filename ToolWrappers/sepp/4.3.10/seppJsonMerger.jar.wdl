version 1.0

task SeppJsonMergerjar {
  command <<<
    seppJsonMerger_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}