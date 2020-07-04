version 1.0

task Bam2fasta {
  input {
    String? var_command
  }
  command <<<
    bam2fasta \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}