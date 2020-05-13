version 1.0

task Qvality {
  input {
    Boolean includeIncludeNegative
    String? targetTargetFile
    String? nullNullFile
  }
  command <<<
    qvality \
      ~{targetTargetFile} \
      ~{true="--include-negative" false="" includeIncludeNegative} \
      ~{nullNullFile}
  >>>
}