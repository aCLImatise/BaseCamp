version 1.0

task GenieVersion {
  input {
    String? flags
  }
  command <<<
    genie version \
      ~{flags}
  >>>
  parameter_meta {
    flags: ""
  }
}