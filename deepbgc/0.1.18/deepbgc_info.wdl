version 1.0

task DeepbgcInfo {
  input {
    Boolean? debug
  }
  command <<<
    deepbgc info \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: ""
  }
}