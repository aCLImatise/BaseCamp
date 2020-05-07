version 1.0

task Portcullis {
  input {
    Boolean vV
    String? modeMode
    String? modeModeArgs
  }
  command <<<
    portcullis \
      ~{modeMode} \
      ~{true="-v" false="" vV} \
      ~{modeModeArgs}
  >>>
}