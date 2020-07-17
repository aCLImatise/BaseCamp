version 1.0

task Unique.pl {
  input {
    String input_file
  }
  command <<<
    unique.pl \
      ~{input_file}
  >>>
  parameter_meta {
    input_file: ""
  }
}