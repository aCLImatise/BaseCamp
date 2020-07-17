version 1.0

task Phylip2fasta.sh {
  input {
    String in
  }
  command <<<
    phylip2fasta.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}