version 1.0

task SsuEslAlimergeAlignment file 2 {
  input {
    String? alignmentAlignmentFile1
    String? alignmentAlignmentFile2
  }
  command <<<
    ssu-esl-alimerge alignment file 2 \
      ~{alignmentAlignmentFile1} \
      ~{alignmentAlignmentFile2}
  >>>
}