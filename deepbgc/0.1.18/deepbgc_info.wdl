version 1.0

task DeepbgcInfo {
  input {
    Boolean debugDebug
  }
  command <<<
    deepbgc info \
      ~{true="--debug" false="" debugDebug}
  >>>
}