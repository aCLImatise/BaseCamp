version 1.0

task Jalview {
  input {
    Boolean? open
    File? file
    String? output_format
    String? output_file
  }
  command <<<
    jalview \
      ~{file} \
      ~{output_format} \
      ~{output_file} \
      ~{true="-open" false="" open}
  >>>
  parameter_meta {
    open: ""
    file: ""
    output_format: ""
    output_file: ""
  }
}