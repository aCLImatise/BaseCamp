#!/usr/bin/env cwl-runner

baseCommand:
- build_report_fusions_psl.py
class: CommandLineTool
cwlVersion: v1.0
id: build_report_fusions_psl.py
inputs:
- doc: The input FASTQ file containing all the reads.
  id: input_fast_q
  inputBinding:
    prefix: --input_fastq
  type: string
- doc: The input PSL file containing the candidate fusion genes.
  id: input_fusion_psl
  inputBinding:
    prefix: --input_fusion_psl
  type: string
- doc: The input list of candidate fusion genes and ids of the supporting reads, for
    example 'candidate_fusion- genes_not-filtered_supporting_paired-reads.txt'. This
    is processed even further.
  id: input_candidate_fusion_genes_reads
  inputBinding:
    prefix: --input_candidate_fusion_genes_reads
  type: string
- doc: The input list of ids of reads that are unmapped (that are mapping over the
    fusion junction).
  id: input_unmapped_reads
  inputBinding:
    prefix: --input_unmapped_reads
  type: string
- doc: The output super summary report for candidate fusion genes.
  id: output_super_summary
  inputBinding:
    prefix: --output_super_summary
  type: string
- doc: The ouput FASTQ file containing the reads which support each candidate fusion
    gene.
  id: output_zip_fast_a
  inputBinding:
    prefix: --output_zip_fasta
  type: string
- doc: The minimum number of unique reads which overlap over an exon-exon junction.
    Default is 1.
  id: su_porting_unique_reads
  inputBinding:
    prefix: --suporting_unique_reads
  type: string
- doc: For anchors longer (or equal) with this value it is enough to have only one
    supporting read. Default is '40'.
  id: anchor_2
  inputBinding:
    prefix: --anchor2
  type: string
- doc: Path to the genome in 2bit format (generated with faToTwoBit) which will be
    used for aligning using BLAT the supporting reads and their alignment in PSL format
    is added to file specified with '--output_zip_fasta'.
  id: input_genome_2bit
  inputBinding:
    prefix: --input_genome_2bit
  type: string
- doc: Path to the genome in BOWTIE2 index format which will be used for aligning
    using BOWTIE2 the supporting reads and their alignment in PSL format is added
    to file specified with '--output_zip_fasta'.
  id: input_genome_bowtie2
  inputBinding:
    prefix: --input_genome_bowtie2
  type: string
- doc: The type of BLAT alignment to be used for aligning the supporting reads when
    BLAT is chosen. The choices are ['web','sensitive']. Default is 'web'.
  id: psl_alignment_type
  inputBinding:
    prefix: --psl_alignment_type
  type: string
- doc: Path to Blat's executable.
  id: blat_dir
  inputBinding:
    prefix: --blat-dir
  type: string
- doc: If set then a SAM file will be generated using BOWTIE2. Default is '10'.
  id: sam_alignment
  inputBinding:
    prefix: --sam_alignment
  type: string
- doc: Path to Bowtie2's executable.
  id: bowtie2_dir
  inputBinding:
    prefix: --bowtie2-dir
  type: string
- doc: The minimum number of mismatches accepted in the alignment. Default is '3'.
  id: mismatches
  inputBinding:
    prefix: --mismatches
  type: string
- doc: The minimum number of mismatches accepted in the gap alignment. Default is
    '7'.
  id: mismatches_gap
  inputBinding:
    prefix: --mismatches-gap
  type: string
- doc: If used then the junction sequence is added to the FASTA file with the supporting
    reads. Default is 'False'.
  id: junction
  inputBinding:
    prefix: --junction
  type: boolean
- doc: Number or processes to be used for running Bowtie2. Default is '1'.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  id: tmp_dir
  inputBinding:
    prefix: --tmp_dir
  type: string
- doc: If used then the supporting reads from the FASTA file are assembled using VELVET.
    Default is 'False'.
  id: velvet
  inputBinding:
    prefix: --velvet
  type: boolean
- doc: Path to Velvet's executable.
  id: velvet_dir
  inputBinding:
    prefix: --velvet-dir
  type: string
