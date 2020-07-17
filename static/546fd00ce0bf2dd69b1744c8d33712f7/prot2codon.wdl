version 1.0

task Prot2codon {
  input {
    String multi_fast_a_or_stockholm_alignment
    String fast_a_file
  }
  command <<<
    prot2codon \
      ~{multi_fast_a_or_stockholm_alignment} \
      ~{fast_a_file}
  >>>
  parameter_meta {
    multi_fast_a_or_stockholm_alignment: ""
    fast_a_file: ""
  }
}