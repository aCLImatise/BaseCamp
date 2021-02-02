version 1.0

task CheckIndexConsistency {
  command <<<
    check_index_consistency
  >>>
  output {
    File out_stdout = stdout()
  }
}