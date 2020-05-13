class: CommandLineTool
id: methylpy_bam_quality_filter.cwl
inputs:
- id: input_file
  doc: 'BAM file to filter. (default: None)'
  type: string
  inputBinding:
    prefix: --input-file
- id: output_file
  doc: 'Name of output file (default: None)'
  type: string
  inputBinding:
    prefix: --output-file
- id: ref_fast_a
  doc: 'string indicating the path to a fasta file containing the sequences you used
    for mapping (default: None)'
  type: string
  inputBinding:
    prefix: --ref-fasta
- id: min_mapq
  doc: 'Minimum MAPQ for reads to be included. (default: 30)'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: min_num_ch
  doc: 'Minimum number of CH sites for mCH level filter to be applied. (default: 30)'
  type: long
  inputBinding:
    prefix: --min-num-ch
- id: max_mch_level
  doc: 'Maximum mCH level for reads to be included. (default: 0.7)'
  type: long
  inputBinding:
    prefix: --max-mch-level
- id: buffer_line_number
  doc: 'size of buffer for reads to be written on hard drive. (default: 100000)'
  type: string
  inputBinding:
    prefix: --buffer-line-number
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- bam-quality-filter
