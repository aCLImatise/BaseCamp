version 1.0

task Genomestrip {
  input {
    String? java_options
    String subcommand
    String? subcommand_args
  }
  command <<<
    genomestrip \
      ~{java_options} \
      ~{subcommand} \
      ~{subcommand_args}
  >>>
  parameter_meta {
    java_options: ""
    subcommand: ""
    subcommand_args: ""
  }
}