version 1.0

task HalSetMetadata {
  input {
    String hal_file
    String key
    String value
  }
  command <<<
    halSetMetadata \
      ~{hal_file} \
      ~{key} \
      ~{value}
  >>>
  parameter_meta {
    hal_file: ""
    key: ""
    value: ""
  }
}