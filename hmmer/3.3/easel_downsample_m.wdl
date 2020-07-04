version 1.0

task EaselDownsampleM {
  input {
    Boolean? options
    String in_file
  }
  command <<<
    easel downsample m \
      ~{in_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    in_file: ""
  }
}