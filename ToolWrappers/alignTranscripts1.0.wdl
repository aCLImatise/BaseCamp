version 1.0

task AlignTranscripts10 {
  input {
    String? pad
    String? gene_b
    String? gene_a
    String bed_a
    String genome_fasta_a
    String be_db
    String genome_fast_ab
    String out_prefix
  }
  command <<<
    alignTranscripts1_0 \
      ~{bed_a} \
      ~{genome_fasta_a} \
      ~{be_db} \
      ~{genome_fast_ab} \
      ~{out_prefix} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(gene_b) then ("--geneB " +  '"' + gene_b + '"') else ""} \
      ~{if defined(gene_a) then ("--geneA " +  '"' + gene_a + '"') else ""}
  >>>
  parameter_meta {
    pad: ""
    gene_b: ""
    gene_a: ""
    bed_a: "bed file A"
    genome_fasta_a: "fasta file A"
    be_db: "bed file B"
    genome_fast_ab: "fasta file B"
    out_prefix: "out prefix"
  }
  output {
    File out_stdout = stdout()
  }
}