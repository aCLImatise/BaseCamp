version 1.0

task MindTheGap {
  input {
    Boolean versionVersion
  }
  command <<<
    MindTheGap \
      ~{true="-version" false="" versionVersion}
  >>>
}