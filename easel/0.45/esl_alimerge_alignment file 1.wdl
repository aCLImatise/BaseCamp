version 1.0

task EslAlimergeAlignment file 1 {
  input {
    String? alignmentAlignmentFile2
  }
  command <<<
    esl-alimerge alignment file 1 \
      ~{alignmentAlignmentFile2}
  >>>
}