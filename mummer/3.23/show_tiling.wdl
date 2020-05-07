version 1.0

task ShowTiling {
  input {
    String? deltaDeltaFile
  }
  command <<<
    show-tiling \
      ~{deltaDeltaFile}
  >>>
}