version 1.0

task RemovePseudoknotsInput ct file {
  input {
    String? outputOutputCtFile
  }
  command <<<
    RemovePseudoknots input ct file \
      ~{outputOutputCtFile}
  >>>
}