version 1.0

task SlicedimageChecksumOutPath {
  input {
    Boolean? pretty
    String sliced_image
    String checksum
    String in_url
    String out_path
  }
  command <<<
    slicedimage checksum out_path \
      ~{sliced_image} \
      ~{checksum} \
      ~{in_url} \
      ~{out_path} \
      ~{true="--pretty" false="" pretty}
  >>>
  parameter_meta {
    pretty: ""
    sliced_image: ""
    checksum: ""
    in_url: ""
    out_path: ""
  }
}