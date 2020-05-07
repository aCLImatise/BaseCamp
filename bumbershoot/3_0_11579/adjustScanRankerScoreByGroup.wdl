version 1.0

task AdjustScanRankerScoreByGroup {
  input {
    String? groupGroupFile
  }
  command <<<
    adjustScanRankerScoreByGroup \
      ~{groupGroupFile}
  >>>
}