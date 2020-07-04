version 1.0

task Users {
  input {
    String? option
  }
  command <<<
    users \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}