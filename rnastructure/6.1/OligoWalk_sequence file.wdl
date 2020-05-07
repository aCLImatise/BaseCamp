version 1.0

task OligoWalkSequence file {
  input {
    String? reportReportFile
  }
  command <<<
    OligoWalk sequence file \
      ~{reportReportFile}
  >>>
}