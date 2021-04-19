version 1.0

task Dadaist2dada2fasta {
  input {
    Int dadaist_two_dada_two_fast_a
  }
  command <<<
    dadaist2_dada2fasta \
      ~{dadaist_two_dada_two_fast_a}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  parameter_meta {
    dadaist_two_dada_two_fast_a: "-i dada2table.tsv -o table.tsv -r repseqs.fasta"
  }
  output {
    File out_stdout = stdout()
  }
}