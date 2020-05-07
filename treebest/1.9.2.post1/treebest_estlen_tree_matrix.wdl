version 1.0

task TreebestEstlenTreeMatrix {
  input {
    String? tagTag
  }
  command <<<
    treebest estlen tree matrix \
      ~{tagTag}
  >>>
}