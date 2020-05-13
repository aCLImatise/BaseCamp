version 1.0

task SlicedimageChecksumInUrl {
  input {
    Boolean prettyPretty
    String? inInUrl
    String? outOutPath
  }
  command <<<
    slicedimage checksum in_url \
      ~{inInUrl} \
      ~{true="--pretty" false="" prettyPretty} \
      ~{outOutPath}
  >>>
}