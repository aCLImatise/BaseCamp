version 1.0

task TOBIASMergePDF {
  input {
    Boolean inputInput
    Boolean outputOutput
  }
  command <<<
    TOBIAS MergePDF \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput}
  >>>
}