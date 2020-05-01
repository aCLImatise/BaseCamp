version 1.0

task ShowCoords {
  input {
    String? deltaDeltaFile
  }
  command <<<
    show-coords \
      ~{deltaDeltaFile}
  >>>
}