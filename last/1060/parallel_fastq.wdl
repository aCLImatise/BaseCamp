version 1.0

task ParallelFastq {
  input {
    String parallel
    String? var_command
    String? arguments
  }
  command <<<
    parallel-fastq \
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