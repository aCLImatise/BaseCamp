version 1.0

task BuildReportFusionsPsl2.py {
  input {
    String? input_fast_q
    String? input_fusion_psl
    String? input_candidate_fusion_genes_reads
    String? input_unmapped_reads
    String? output_super_summary
    String? output_zip_fast_a
    String? su_porting_unique_reads
    String? anchor_two
    String? trim_complex
    String? input_genome_two_bit
    String? input_genome_bowtie_two
    String? psl_alignment_type
    String? blat_dir
    String? sam_alignment
    String? bowtie_two_dir
    String? mismatches
    String? mismatches_gap
    Boolean? junction
    String? threads
    String? tmp_dir
    Boolean? velvet
    String? velvet_dir
  }
  command <<<
    build_report_fusions_psl2.py \
      ~{if defined(input_fast_q) then ("--input_fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(input_fusion_psl) then ("--input_fusion_psl " +  '"' + input_fusion_psl + '"') else ""} \
      ~{if defined(input_candidate_fusion_genes_reads) then ("--input_candidate_fusion_genes_reads " +  '"' + input_candidate_fusion_genes_reads + '"') else ""} \
      ~{if defined(input_unmapped_reads) then ("--input_unmapped_reads " +  '"' + input_unmapped_reads + '"') else ""} \
      ~{if defined(output_super_summary) then ("--output_super_summary " +  '"' + output_super_summary + '"') else ""} \
      ~{if defined(output_zip_fast_a) then ("--output_zip_fasta " +  '"' + output_zip_fast_a + '"') else ""} \
      ~{if defined(su_porting_unique_reads) then ("--suporting_unique_reads " +  '"' + su_porting_unique_reads + '"') else ""} \
      ~{if defined(anchor_two) then ("--anchor2 " +  '"' + anchor_two + '"') else ""} \
      ~{if defined(trim_complex) then ("--trim-complex " +  '"' + trim_complex + '"') else ""} \
      ~{if defined(input_genome_two_bit) then ("--input_genome_2bit " +  '"' + input_genome_two_bit + '"') else ""} \
      ~{if defined(input_genome_bowtie_two) then ("--input_genome_bowtie2 " +  '"' + input_genome_bowtie_two + '"') else ""} \
      ~{if defined(psl_alignment_type) then ("--psl_alignment_type " +  '"' + psl_alignment_type + '"') else ""} \
      ~{if defined(blat_dir) then ("--blat-dir " +  '"' + blat_dir + '"') else ""} \
      ~{if defined(sam_alignment) then ("--sam_alignment " +  '"' + sam_alignment + '"') else ""} \
      ~{if defined(bowtie_two_dir) then ("--bowtie2-dir " +  '"' + bowtie_two_dir + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(mismatches_gap) then ("--mismatches-gap " +  '"' + mismatches_gap + '"') else ""} \
      ~{true="--junction" false="" junction} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{true="--velvet" false="" velvet} \
      ~{if defined(velvet_dir) then ("--velvet-dir " +  '"' + velvet_dir + '"') else ""}
  >>>
  parameter_meta {
    input_fast_q: "The input FASTQ file containing all the reads."
    input_fusion_psl: "The input PSL file containing the candidate fusion genes."
    input_candidate_fusion_genes_reads: "The input list of candidate fusion genes and ids of the supporting reads, for example 'candidate_fusion- genes_not-filtered_supporting_paired-reads.txt'. This is processed even further."
    input_unmapped_reads: "The input list of ids of reads that are unmapped (that are mapping over the fusion junction)."
    output_super_summary: "The output super summary report for candidate fusion genes."
    output_zip_fast_a: "The ouput FASTQ file containing the reads which support each candidate fusion gene."
    su_porting_unique_reads: "The minimum number of unique reads which overlap over an exon-exon junction. Default is 1."
    anchor_two: "For anchors longer (or equal) with this value it is enough to have only one supporting read. Default is '150'."
    trim_complex: "This value will be used for trimming at the fusion junction left adn right in order to be able to match the PSL mappings when they contain several exon- introns. Default is '40'."
    input_genome_two_bit: "Path to the genome in 2bit format (generated with faToTwoBit) which will be used for aligning using BLAT the supporting reads and their alignment in PSL format is added to file specified with '--output_zip_fasta'."
    input_genome_bowtie_two: "Path to the genome in BOWTIE2 index format which will be used for aligning using BOWTIE2 the supporting reads and their alignment in PSL format is added to file specified with '--output_zip_fasta'."
    psl_alignment_type: "The type of BLAT alignment to be used for aligning the supporting reads when BLAT is chosen. The choices are ['web','sensitive']. Default is 'web'."
    blat_dir: "Path to Blat's executable."
    sam_alignment: "If set then a SAM file will be generated using BOWTIE2. Default is '10'."
    bowtie_two_dir: "Path to Bowtie2's executable."
    mismatches: "The minimum number of mismatches accepted in the alignment. Default is '3'."
    mismatches_gap: "The minimum number of mismatches accepted in the gap alignment. Default is '30'."
    junction: "If used then the junction sequence is added to the FASTA file with the supporting reads. Default is 'False'."
    threads: "Number or processes to be used for running Bowtie2. Default is '1'."
    tmp_dir: "The directory which should be used as temporary directory. By default is the OS temporary directory."
    velvet: "If used then the supporting reads from the FASTA file are assembled using VELVET. Default is 'False'."
    velvet_dir: "Path to Velvet's executable."
  }
}