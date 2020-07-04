version 1.0

task Hostid {
  input {
    String? option
  }
  command <<<
    hostid \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}