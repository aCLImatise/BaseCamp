version 1.0

task MerlinOffline {
  input {
    Boolean datDatInfer
    Boolean pedPedInfer
    Boolean customCustom
  }
  command <<<
    merlin-offline \
      ~{true="--datinfer" false="" datDatInfer} \
      ~{true="--pedinfer" false="" pedPedInfer} \
      ~{true="--custom" false="" customCustom}
  >>>
}