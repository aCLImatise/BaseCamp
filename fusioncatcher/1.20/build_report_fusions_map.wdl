version 1.0

task BuildReportFusionsMap.py {
  input {
    String? input_fast_q
    String? input_fast_a_jun_cs
    String? input_fusion_summary
    String? input_fusion_summary_more
    String? input_candidate_fusion_genes
    String? input_candidate_fusion_genes_reads
    String? input_unmapped_reads
    String? input_candidate_fusions_missing_mates
    String? input_exons
    String? output_super_summary
    String? output_zip_fast_a
    String? su_porting_unique_reads
    String? anchor_two
    String? input_genome_two_bit
    String? blat_dir
    String? input_genome_bowtie_two
    String? bowtie_two_dir
    String? threads
    String? tmp_dir
    String? psl_alignment_type
    String? sam_alignment
    Boolean? junction
    Boolean? velvet
    String? velvet_dir
    String? output_all_candidate_fusion_genes_reads
  }
  command <<<
    build_report_fusions_map.py \
      ~{if defined(input_fast_q) then ("--input_fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(input_fast_a_jun_cs) then ("--input_fasta_juncs " +  '"' + input_fast_a_jun_cs + '"') else ""} \
      ~{if defined(input_fusion_summary) then ("--input_fusion_summary " +  '"' + input_fusion_summary + '"') else ""} \
      ~{if defined(input_fusion_summary_more) then ("--input_fusion_summary_more " +  '"' + input_fusion_summary_more + '"') else ""} \
      ~{if defined(input_candidate_fusion_genes) then ("--input_candidate_fusion_genes " +  '"' + input_candidate_fusion_genes + '"') else ""} \
      ~{if defined(input_candidate_fusion_genes_reads) then ("--input_candidate_fusion_genes_reads " +  '"' + input_candidate_fusion_genes_reads + '"') else ""} \
      ~{if defined(input_unmapped_reads) then ("--input_unmapped_reads " +  '"' + input_unmapped_reads + '"') else ""} \
      ~{if defined(input_candidate_fusions_missing_mates) then ("--input_candidate_fusions_missing_mates " +  '"' + input_candidate_fusions_missing_mates + '"') else ""} \
      ~{if defined(input_exons) then ("--input_exons " +  '"' + input_exons + '"') else ""} \
      ~{if defined(output_super_summary) then ("--output_super_summary " +  '"' + output_super_summary + '"') else ""} \
      ~{if defined(output_zip_fast_a) then ("--output_zip_fasta " +  '"' + output_zip_fast_a + '"') else ""} \
      ~{if defined(su_porting_unique_reads) then ("--suporting_unique_reads " +  '"' + su_porting_unique_reads + '"') else ""} \
      ~{if defined(anchor_two) then ("--anchor2 " +  '"' + anchor_two + '"') else ""} \
      ~{if defined(input_genome_two_bit) then ("--input_genome_2bit " +  '"' + input_genome_two_bit + '"') else ""} \
      ~{if defined(blat_dir) then ("--blat-dir " +  '"' + blat_dir + '"') else ""} \
      ~{if defined(input_genome_bowtie_two) then ("--input_genome_bowtie2 " +  '"' + input_genome_bowtie_two + '"') else ""} \
      ~{if defined(bowtie_two_dir) then ("--bowtie2-dir " +  '"' + bowtie_two_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(psl_alignment_type) then ("--psl_alignment_type " +  '"' + psl_alignment_type + '"') else ""} \
      ~{if defined(sam_alignment) then ("--sam_alignment " +  '"' + sam_alignment + '"') else ""} \
      ~{true="--junction" false="" junction} \
      ~{true="--velvet" false="" velvet} \
      ~{if defined(velvet_dir) then ("--velvet-dir " +  '"' + velvet_dir + '"') else ""} \
      ~{if defined(output_all_candidate_fusion_genes_reads) then ("--output_all_candidate_fusion_genes_reads " +  '"' + output_all_candidate_fusion_genes_reads + '"') else ""}
  >>>
  parameter_meta {
    input_fast_q: "The input FASTQ file containing all the reads (can be given as gzipped file too)."
    input_fast_a_jun_cs: "The input FASTA file containing all the sequences of the exon-exon junctions."
    input_fusion_summary: "The input summary for fusion genes which is processed further, for example 'candidate_fusion-genes_exon- exon-junctions_summary.txt'."
    input_fusion_summary_more: "The input summary for fusion genes with even more information, for example 'candidate_fusion-genes_exon- exon-junctions_reads-positions.txt'. This is processed even further."
    input_candidate_fusion_genes: "The input list of candidate fusion genes, for example 'candidate_fusion-genes_no-offending-reads_label-no- proteins-paralogs-readthrough-similar- pseudogenes_further.txt'. This is processed even further."
    input_candidate_fusion_genes_reads: "The input list of candidate fusion genes and ids of the supporting reads, for example 'candidate_fusion- genes_not-filtered_supporting_paired-reads.txt'. This is processed even further."
    input_unmapped_reads: "The input list of ids of reads that are unmapped (that are mapping over the fusion junction)."
    input_candidate_fusions_missing_mates: "The input list mate reads from pairs of reads together with their mappings on the genes, for example 'candidate_fusion-genes_missing_mates.txt'."
    input_exons: "Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'. This is used for filtering the UTRs extensions by removing any extension which overlaps with any exons from the database. This is optional."
    output_super_summary: "The output super summary report for candidate fusion genes."
    output_zip_fast_a: "The ouput FASTQ file containing the reads which support each candidate fusion gene."
    su_porting_unique_reads: "The minimum number of unique reads which overlap over an exon-exon junction. Default is '1'."
    anchor_two: "For anchors longer (or equal) with this value it is enough to have only one supporting read. Default is '40'."
    input_genome_two_bit: "Path to the genome in 2bit format (generated with faToTwoBit) which will be used for aligning using BLAT the supporting reads and their alignment in PSL format is added to file specified with '--output_zip_fasta'."
    blat_dir: "Path to Blat's executable."
    input_genome_bowtie_two: "Path to the genome BOWTIE2 index which is used to generate the alignments in SAM format which is added to file specified with '--output_zip_fasta'."
    bowtie_two_dir: "Path to Bowtie2's executable."
    threads: "Number or processes to be used for running Bowtie2. Default is '1'."
    tmp_dir: "The directory which should be used as temporary directory. By default is the OS temporary directory."
    psl_alignment_type: "The type of BLAT alignment to be used for aligning the supporting reads when BLAT is chosen. The choices are ['web','sensitive']. Default is 'web'."
    sam_alignment: "If set then a SAM file will be generated using BOWTIE2. Default is '10'."
    junction: "If used then the junction sequence is added to the FASTA file with the supporting reads. Default is 'False'."
    velvet: "If used then the supporting reads from the FASTA file are assembled using VELVET. Default is 'False'."
    velvet_dir: "Path to Velvet's executable."
    output_all_candidate_fusion_genes_reads: "The output list of candidate fusion genes and the supporting reads."
  }
}