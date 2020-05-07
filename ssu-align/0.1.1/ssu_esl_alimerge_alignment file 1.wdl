version 1.0

task SsuEslAlimergeAlignment file 1 {
  input {
    String? alignmentAlignmentFile2
  }
  command <<<
    ssu-esl-alimerge alignment file 1 \
      ~{alignmentAlignmentFile2}
  >>>
}