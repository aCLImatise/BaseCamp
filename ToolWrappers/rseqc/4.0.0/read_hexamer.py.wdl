version 1.0

task ReadHexamerpy {
  input {
    Int? read_sequence_fasta
    String? ref_genome
    String? ref_gene
  }
  command <<<
    read_hexamer_py \
      ~{if defined(read_sequence_fasta) then ("--input " +  '"' + read_sequence_fasta + '"') else ""} \
      ~{if defined(ref_genome) then ("--refgenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    read_sequence_fasta: "Read sequence in fasta or fastq format. Multiple\\nfasta/fastq files should be separated by ','. For\\nexample: read.fq,read2.fa,read3,fa"
    ref_genome: "Reference genome sequence in fasta format. Optional"
    ref_gene: "Reference mRNA sequence in fasta format. Optional\\n"
  }
  output {
    File out_stdout = stdout()
  }
}