version 1.0

task Prot2codon {
  input {
    String multi_fast_a_or_stockholm_alignment
    File fast_a_file
  }
  command <<<
    prot2codon \
      ~{multi_fast_a_or_stockholm_alignment} \
      ~{fast_a_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    multi_fast_a_or_stockholm_alignment: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}