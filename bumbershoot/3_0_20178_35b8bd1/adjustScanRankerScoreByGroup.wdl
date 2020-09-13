version 1.0

task AdjustScanRankerScoreByGroup {
  input {
    String group_file
  }
  command <<<
    adjustScanRankerScoreByGroup \
      ~{group_file}
  >>>
  parameter_meta {
    group_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}