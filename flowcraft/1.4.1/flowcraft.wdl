version 1.0

task Flowcraft {
  input {
    Boolean debugDebug
  }
  command <<<
    flowcraft \
      ~{true="--debug" false="" debugDebug}
  >>>
}