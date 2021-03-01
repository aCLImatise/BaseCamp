version 1.0

task SeppJsonMergerjar {
  command <<<
    seppJsonMerger_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}