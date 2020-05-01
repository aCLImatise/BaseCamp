version 1.0

task ShowDiff {
  input {
    String? deltaDeltaFile
  }
  command <<<
    show-diff \
      ~{deltaDeltaFile}
  >>>
}