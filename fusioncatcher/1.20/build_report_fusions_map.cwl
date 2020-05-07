class: CommandLineTool
id: build_report_fusions_map.py.cwl
inputs:
- id: input_fast_q
  doc: The input FASTQ file containing all the reads (can be given as gzipped file
    too).
  type: string
  inputBinding:
    prefix: --input_fastq
- id: input_fast_a_jun_cs
  doc: The input FASTA file containing all the sequences of the exon-exon junctions.
  type: string
  inputBinding:
    prefix: --input_fasta_juncs
- id: input_fusion_summary
  doc: The input summary for fusion genes which is processed further, for example
    'candidate_fusion-genes_exon- exon-junctions_summary.txt'.
  type: string
  inputBinding:
    prefix: --input_fusion_summary
- id: input_fusion_summary_more
  doc: The input summary for fusion genes with even more information, for example
    'candidate_fusion-genes_exon- exon-junctions_reads-positions.txt'. This is processed
    even further.
  type: string
  inputBinding:
    prefix: --input_fusion_summary_more
- id: input_candidate_fusion_genes
  doc: The input list of candidate fusion genes, for example 'candidate_fusion-genes_no-offending-reads_label-no-
    proteins-paralogs-readthrough-similar- pseudogenes_further.txt'. This is processed
    even further.
  type: string
  inputBinding:
    prefix: --input_candidate_fusion_genes
- id: input_candidate_fusion_genes_reads
  doc: The input list of candidate fusion genes and ids of the supporting reads, for
    example 'candidate_fusion- genes_not-filtered_supporting_paired-reads.txt'. This
    is processed even further.
  type: string
  inputBinding:
    prefix: --input_candidate_fusion_genes_reads
- id: input_unmapped_reads
  doc: The input list of ids of reads that are unmapped (that are mapping over the
    fusion junction).
  type: string
  inputBinding:
    prefix: --input_unmapped_reads
- id: input_candidate_fusions_missing_mates
  doc: The input list mate reads from pairs of reads together with their mappings
    on the genes, for example 'candidate_fusion-genes_missing_mates.txt'.
  type: string
  inputBinding:
    prefix: --input_candidate_fusions_missing_mates
- id: input_exons
  doc: Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'.
    This is used for filtering the UTRs extensions by removing any extension which
    overlaps with any exons from the database. This is optional.
  type: string
  inputBinding:
    prefix: --input_exons
- id: output_super_summary
  doc: The output super summary report for candidate fusion genes.
  type: string
  inputBinding:
    prefix: --output_super_summary
- id: output_zip_fast_a
  doc: The ouput FASTQ file containing the reads which support each candidate fusion
    gene.
  type: string
  inputBinding:
    prefix: --output_zip_fasta
- id: su_porting_unique_reads
  doc: The minimum number of unique reads which overlap over an exon-exon junction.
    Default is '1'.
  type: string
  inputBinding:
    prefix: --suporting_unique_reads
- id: anchor_2
  doc: For anchors longer (or equal) with this value it is enough to have only one
    supporting read. Default is '40'.
  type: string
  inputBinding:
    prefix: --anchor2
- id: input_genome_2bit
  doc: Path to the genome in 2bit format (generated with faToTwoBit) which will be
    used for aligning using BLAT the supporting reads and their alignment in PSL format
    is added to file specified with '--output_zip_fasta'.
  type: string
  inputBinding:
    prefix: --input_genome_2bit
- id: blat_dir
  doc: Path to Blat's executable.
  type: string
  inputBinding:
    prefix: --blat-dir
- id: input_genome_bowtie2
  doc: Path to the genome BOWTIE2 index which is used to generate the alignments in
    SAM format which is added to file specified with '--output_zip_fasta'.
  type: string
  inputBinding:
    prefix: --input_genome_bowtie2
- id: bowtie2_dir
  doc: Path to Bowtie2's executable.
  type: string
  inputBinding:
    prefix: --bowtie2-dir
- id: threads
  doc: Number or processes to be used for running Bowtie2. Default is '1'.
  type: string
  inputBinding:
    prefix: --threads
- id: tmp_dir
  doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  type: string
  inputBinding:
    prefix: --tmp_dir
- id: psl_alignment_type
  doc: The type of BLAT alignment to be used for aligning the supporting reads when
    BLAT is chosen. The choices are ['web','sensitive']. Default is 'web'.
  type: string
  inputBinding:
    prefix: --psl_alignment_type
- id: sam_alignment
  doc: If set then a SAM file will be generated using BOWTIE2. Default is '10'.
  type: string
  inputBinding:
    prefix: --sam_alignment
- id: junction
  doc: If used then the junction sequence is added to the FASTA file with the supporting
    reads. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --junction
- id: velvet
  doc: If used then the supporting reads from the FASTA file are assembled using VELVET.
    Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --velvet
- id: velvet_dir
  doc: Path to Velvet's executable.
  type: string
  inputBinding:
    prefix: --velvet-dir
- id: output_all_candidate_fusion_genes_reads
  doc: The output list of candidate fusion genes and the supporting reads.
  type: string
  inputBinding:
    prefix: --output_all_candidate_fusion_genes_reads
outputs: []
cwlVersion: v1.1
baseCommand:
- build_report_fusions_map.py
