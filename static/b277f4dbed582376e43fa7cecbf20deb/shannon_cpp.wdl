version 1.0

task ShannonCpp {
  input {
    String? subcommand
  }
  command <<<
    shannon_cpp \
      ~{subcommand}
  >>>
  parameter_meta {
    subcommand: ""
  }
}