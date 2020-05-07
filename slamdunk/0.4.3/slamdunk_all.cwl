class: CommandLineTool
id: slamdunk_all.cwl
inputs:
- id: files
  doc: Single csv/tsv file (recommended) containing all sample files and sample info
    or a list of all sample BAM/FASTA(gz)/FASTQ(gz) files
  type: File
  inputBinding:
    position: 0
- id: max_polya
  doc: "Max number of As at the 3' end of a read (default: 4)"
  type: long
  inputBinding:
    prefix: --max-polya
- id: top_n
  doc: 'Max. number of alignments to report per read (default: 1)'
  type: string
  inputBinding:
    prefix: --topn
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quant_seq
  doc: Run plain Quantseq alignment without SLAM-seq scoring
  type: boolean
  inputBinding:
    prefix: --quantseq
- id: end_to_end
  doc: Use a end to end alignment algorithm for mapping.
  type: boolean
  inputBinding:
    prefix: --endtoend
- id: multimap
  doc: Use reference to resolve multimappers (requires -n > 1).
  type: boolean
  inputBinding:
    prefix: --multimap
- id: min_mq
  doc: 'Minimum mapping quality (default: 2)'
  type: string
  inputBinding:
    prefix: --min-mq
- id: min_identity
  doc: 'Minimum alignment identity (default: 0.95)'
  type: string
  inputBinding:
    prefix: --min-identity
- id: max_nm
  doc: 'Maximum NM for alignments (default: -1)'
  type: string
  inputBinding:
    prefix: --max-nm
- id: min_coverage
  doc: 'Minimimum coverage to call variant (default: 10)'
  type: string
  inputBinding:
    prefix: --min-coverage
- id: var_fraction
  doc: 'Minimimum variant fraction to call variant (default: 0.8)'
  type: string
  inputBinding:
    prefix: --var-fraction
- id: conversion_threshold
  doc: 'Number of T>C conversions required to count read as T>C read (default: 1)'
  type: string
  inputBinding:
    prefix: --conversion-threshold
- id: max_read_length
  doc: Max read length in BAM file
  type: long
  inputBinding:
    prefix: --max-read-length
- id: min_base_qual
  doc: 'Min base quality for T -> C conversions (default: 27)'
  type: long
  inputBinding:
    prefix: --min-base-qual
- id: sample_name
  doc: Use this sample name for all supplied samples
  type: string
  inputBinding:
    prefix: --sampleName
- id: sample_type
  doc: Use this sample type for all supplied samples
  type: string
  inputBinding:
    prefix: --sampleType
- id: sample_time
  doc: Use this sample time for all supplied samples
  type: string
  inputBinding:
    prefix: --sampleTime
- id: sample_index
  doc: Run analysis only for sample <i>. Use for distributing slamdunk analysis on
    a cluster (index is 1-based).
  type: string
  inputBinding:
    prefix: --sample-index
- id: skip_sam
  doc: Output BAM while mapping. Slower but, uses less hard disk.
  type: boolean
  inputBinding:
    prefix: --skip-sam
outputs: []
cwlVersion: v1.1
baseCommand:
- slamdunk
- all
