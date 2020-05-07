version 1.0

task Chromosomer {
  input {
    Boolean debugDebug
  }
  command <<<
    chromosomer \
      ~{true="--debug" false="" debugDebug}
  >>>
}