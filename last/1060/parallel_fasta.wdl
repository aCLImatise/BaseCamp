version 1.0

task ParallelFasta {
  input {
    String parallel
    String? var_command
    String? arguments
  }
  command <<<
    parallel-fasta \
      ~{parallel} \
      ~{var_command} \
      ~{arguments}
  >>>
  parameter_meta {
    parallel: ""
    var_command: ""
    arguments: ""
  }
}