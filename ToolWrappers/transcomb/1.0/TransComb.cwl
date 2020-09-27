class: CommandLineTool
id: TransComb.cwl
inputs:
- id: in_bam_file_produced
  doc: ': BAM file produced by Tophat or Tophat2.'
  type: File
  inputBinding:
    prefix: -b
- id: in_strandspecific_rnaseq_reads
  doc: ": Strand-specific RNA-Seq reads orientation.\n1) Use <unstranded> to indicate\
    \ RNA-seq reads are non-strand-specific.\n2) Use <first> to indicate fr-first-stranded\
    \ RNA-seq reads.\n3) Use <second> to indicate fr-second-stranded RNA-seq reads."
  type: long
  inputBinding:
    prefix: -s
- id: in_output_pathfile_name
  doc: ': Output path/file name of the assembled transcripts GTF, default: ./TransComb.gtf'
  type: File
  inputBinding:
    prefix: -o
- id: in_minimum_expression_level
  doc: ': Minimum expression level estimated by abundance analysis for output, default:
    0.'
  type: long
  inputBinding:
    prefix: -f
- id: in_minimum_assembled_transcript
  doc: ': Minimum assembled transcript length, default: 500.'
  type: long
  inputBinding:
    prefix: -l
- id: in_minimum_junction_coverage
  doc: ': Minimum junction coverage fraction by maximum junction coverage, default:
    0.02.'
  type: double
  inputBinding:
    prefix: -d
- id: in_minimum_farction_unbalanced
  doc: ': Minimum farction of unbalanced junction, default: 0.1.'
  type: double
  inputBinding:
    prefix: -D
- id: in_minimum_gene_length
  doc: ': Minimum  gene length, default: 200.'
  type: long
  inputBinding:
    prefix: -g
- id: in_disable_trimming_predicted
  doc: ': Disable trimming of predicted transcripts based on coverage, default: coverage
    trimming is enabled.'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_minimum_gap_length
  doc: ': Minimum gap length between two exons, default: 200.'
  type: long
  inputBinding:
    prefix: -e
- id: in_minimum_seed_coverage
  doc: ': Minimum seed coverage used for generate a new transcript, default: 0.'
  type: long
  inputBinding:
    prefix: -F
- id: in_minimum_anchor_length
  doc: ': Minimum anchor length for junctions, default: 1.'
  type: long
  inputBinding:
    prefix: -a
- id: in_fraction_exon_allowed
  doc: ': Fraction of exon allowed to be covered by multi-hit reads, default: 1.'
  type: long
  inputBinding:
    prefix: -m
- id: in_report_current_version
  doc: ': Report the current version of TransComb and exit.'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pathfile_name
  doc: ': Output path/file name of the assembled transcripts GTF, default: ./TransComb.gtf'
  type: File
  outputBinding:
    glob: $(inputs.in_output_pathfile_name)
cwlVersion: v1.1
baseCommand:
- TransComb
