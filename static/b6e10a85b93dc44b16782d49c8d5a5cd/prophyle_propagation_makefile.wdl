version 1.0

task ProphylePropagationMakefile.py {
  input {
    Int? kmer_length
  }
  command <<<
    prophyle_propagation_makefile.py \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""}
  >>>
  parameter_meta {
    kmer_length: "k-mer length"
  }
}