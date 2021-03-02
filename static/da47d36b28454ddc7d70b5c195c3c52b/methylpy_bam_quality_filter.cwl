class: CommandLineTool
id: methylpy_bam_quality_filter.cwl
inputs:
- id: in_input_file
  doc: 'BAM file to filter. (default: None)'
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: 'Name of output file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_ref_fast_a
  doc: "string indicating the path to a fasta file containing\nthe sequences you used\
    \ for mapping (default: None)"
  type: File?
  inputBinding:
    prefix: --ref-fasta
- id: in_min_mapq
  doc: 'Minimum MAPQ for reads to be included. (default: 30)'
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_min_num_ch
  doc: "Minimum number of CH sites for mCH level filter to be\napplied. (default:\
    \ 30)"
  type: long?
  inputBinding:
    prefix: --min-num-ch
- id: in_max_mch_level
  doc: "Maximum mCH level for reads to be included. (default:\n0.7)"
  type: long?
  inputBinding:
    prefix: --max-mch-level
- id: in_buffer_line_number
  doc: "size of buffer for reads to be written on hard drive.\n(default: 100000)\n"
  type: long?
  inputBinding:
    prefix: --buffer-line-number
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Name of output file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- methylpy
- bam-quality-filter
