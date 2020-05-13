version 1.0

task OligoWalkReport file {
  input {
    String? sequenceSequenceFile
    String? reportReportFile
  }
  command <<<
    OligoWalk report file \
      ~{sequenceSequenceFile} \
      ~{reportReportFile}
  >>>
}