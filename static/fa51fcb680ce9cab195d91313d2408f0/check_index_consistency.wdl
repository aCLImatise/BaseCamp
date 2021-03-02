version 1.0

task CheckIndexConsistency {
  command <<<
    check_index_consistency
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}