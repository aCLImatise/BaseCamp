version 1.0

task AlignTranscripts10 {
  input {
    String? gene_a
    String? gap_extend
    Boolean? orf
    File? bed_tools_path
    String? pad
    String? gene_b
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
      ~{if defined(gene_a) then ("--geneA " +  '"' + gene_a + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap_extend " +  '"' + gap_extend + '"') else ""} \
      ~{if (orf) then "--orf" else ""} \
      ~{if defined(bed_tools_path) then ("--bedtools_path " +  '"' + bed_tools_path + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(gene_b) then ("--geneB " +  '"' + gene_b + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_a: "if bedA has more than one entry, specify which gene to"
    gap_extend: "unmask repeats when aligning"
    orf: "flag for checking for orfs in alignment"
    bed_tools_path: "Aligns genes to random background and removes\\nnonsignificant alignments"
    pad: ""
    gene_b: ""
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