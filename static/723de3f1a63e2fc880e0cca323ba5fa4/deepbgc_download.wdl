version 1.0

task DeepbgcDownload {
  input {
    Boolean? debug
  }
  command <<<
    deepbgc download \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: ""
  }
}