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
      ~{if (pretty) then "--pretty" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pretty: ""
    sliced_image: ""
    checksum: ""
    in_url: ""
    out_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}