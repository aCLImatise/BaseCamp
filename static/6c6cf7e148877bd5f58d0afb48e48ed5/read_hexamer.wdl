version 1.0

task ReadHexamer.py {
  input {
    String? read_sequence_separated
    String? ref_genome
    String? ref_gene
  }
  command <<<
    read_hexamer.py \
      ~{if defined(read_sequence_separated) then ("--input " +  '"' + read_sequence_separated + '"') else ""} \
      ~{if defined(ref_genome) then ("--refgenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""}
  >>>
  parameter_meta {
    read_sequence_separated: "Read sequence in fasta or fastq format. Multiple fasta/fastq files should be separated by ','. For example: read.fq,read2.fa,read3,fa"
    ref_genome: "Reference genome sequence in fasta format. Optional"
    ref_gene: "Reference mRNA sequence in fasta format. Optional"
  }
}