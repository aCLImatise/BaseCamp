version 1.0

task SlicedimageChecksum {
  input {
    Boolean? pretty
  }
  command <<<
    slicedimage checksum \
      ~{true="--pretty" false="" pretty}
  >>>
  parameter_meta {
    pretty: "Pretty-print the output file"
  }
}