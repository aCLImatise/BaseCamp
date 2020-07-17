version 1.0

task Printf {
  input {
    String format
    String? argument
  }
  command <<<
    printf \
      ~{format} \
      ~{argument}
  >>>
  parameter_meta {
    format: ""
    argument: ""
  }
}