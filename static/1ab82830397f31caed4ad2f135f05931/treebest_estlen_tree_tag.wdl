version 1.0

task TreebestEstlenTreeTag {
  input {
    String? matrixMatrix
    String? tagTag
  }
  command <<<
    treebest estlen tree tag \
      ~{matrixMatrix} \
      ~{tagTag}
  >>>
}