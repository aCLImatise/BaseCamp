version 1.0

task Filter {
  input {
    Boolean? no_header
    String? option
  }
  command <<<
    filter \
      ~{option} \
      ~{true="--no-header" false="" no_header}
  >>>
  parameter_meta {
    no_header: "input does not contain a header line"
    option: ""
  }
}