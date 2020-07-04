version 1.0

task AlignTranscripts1.0 {
  input {
    String? gene_a
    String? gene_b
    String? pad
    String bed_a
    String genome_fasta_a
    String be_db
    String genome_fast_ab
    String out_prefix
  }
  command <<<
    alignTranscripts1.0 \
      ~{bed_a} \
      ~{genome_fasta_a} \
      ~{be_db} \
      ~{genome_fast_ab} \
      ~{out_prefix} \
      ~{if defined(gene_a) then ("--geneA " +  '"' + gene_a + '"') else ""} \
      ~{if defined(gene_b) then ("--geneB " +  '"' + gene_b + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""}
  >>>
  parameter_meta {
    gene_a: ""
    gene_b: ""
    pad: ""
    bed_a: "bed file A"
    genome_fasta_a: "fasta file A"
    be_db: "bed file B"
    genome_fast_ab: "fasta file B"
    out_prefix: "out prefix"
  }
}