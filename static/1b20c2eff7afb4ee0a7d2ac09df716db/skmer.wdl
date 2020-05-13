version 1.0

task Skmer {
  input {
    Boolean debugDebug
  }
  command <<<
    skmer \
      ~{true="--debug" false="" debugDebug}
  >>>
}