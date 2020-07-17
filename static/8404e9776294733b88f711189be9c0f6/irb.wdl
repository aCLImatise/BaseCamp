version 1.0

task Irb {
  input {
    String? program_file
    String? arguments
  }
  command <<<
    irb \
      ~{program_file} \
      ~{arguments}
  >>>
  parameter_meta {
    program_file: ""
    arguments: ""
  }
}