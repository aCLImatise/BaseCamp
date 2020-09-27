version 1.0

task ProphylePropagationMakefilepy {
  input {
    Int? kmer_length
  }
  command <<<
    prophyle_propagation_makefile_py \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""}
  >>>
  parameter_meta {
    kmer_length: "k-mer length"
  }
  output {
    File out_stdout = stdout()
  }
}