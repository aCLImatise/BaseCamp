version 1.0

task Assemblerflow {
  input {
    Boolean debugDebug
  }
  command <<<
    assemblerflow \
      ~{true="--debug" false="" debugDebug}
  >>>
}