version 1.0

task Vispr {
  input {
    Boolean debugDebug
  }
  command <<<
    vispr \
      ~{true="--debug" false="" debugDebug}
  >>>
}