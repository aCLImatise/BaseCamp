version 1.0

task Obsym {
  input {
    String input_file
  }
  command <<<
    obsym \
      ~{input_file}
  >>>
  parameter_meta {
    input_file: ""
  }
}