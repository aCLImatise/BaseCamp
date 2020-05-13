version 1.0

task SlicedimageChecksum {
  input {
    Boolean prettyPretty
  }
  command <<<
    slicedimage checksum \
      ~{true="--pretty" false="" prettyPretty}
  >>>
}