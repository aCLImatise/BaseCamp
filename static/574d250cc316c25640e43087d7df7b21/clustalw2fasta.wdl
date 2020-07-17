version 1.0

task Clustalw2fasta {
  input {
    String alignment_file
  }
  command <<<
    clustalw2fasta \
      ~{alignment_file}
  >>>
  parameter_meta {
    alignment_file: ""
  }
}