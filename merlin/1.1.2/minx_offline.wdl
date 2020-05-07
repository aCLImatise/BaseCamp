version 1.0

task MinxOffline {
  input {
    Boolean datDatInfer
    Boolean pedPedInfer
    Boolean customCustom
  }
  command <<<
    minx-offline \
      ~{true="--datinfer" false="" datDatInfer} \
      ~{true="--pedinfer" false="" pedPedInfer} \
      ~{true="--custom" false="" customCustom}
  >>>
}