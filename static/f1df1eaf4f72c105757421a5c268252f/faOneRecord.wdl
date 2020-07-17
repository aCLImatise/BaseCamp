version 1.0

task FaOneRecord {
  input {
    String in_dot_fa
    String record_name
  }
  command <<<
    faOneRecord \
      ~{in_dot_fa} \
      ~{record_name}
  >>>
  parameter_meta {
    in_dot_fa: ""
    record_name: ""
  }
}