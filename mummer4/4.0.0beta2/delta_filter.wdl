version 1.0

task DeltaFilter {
  input {
    String? deltaDeltaFile
  }
  command <<<
    delta-filter \
      ~{deltaDeltaFile}
  >>>
}