version 1.0

task RemovePseudoknotsOutput ct file {
  input {
    String? inputInputCtFile
    String? outputOutputCtFile
  }
  command <<<
    RemovePseudoknots output ct file \
      ~{inputInputCtFile} \
      ~{outputOutputCtFile}
  >>>
}