version 1.0

task EslAlimergeAlignment file 2 {
  input {
    String? alignmentAlignmentFile1
    String? alignmentAlignmentFile2
  }
  command <<<
    esl-alimerge alignment file 2 \
      ~{alignmentAlignmentFile1} \
      ~{alignmentAlignmentFile2}
  >>>
}