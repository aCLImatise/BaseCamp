class: CommandLineTool
id: snaptools_dex_fastq.cwl
inputs:
- id: input_fast_q
  doc: 'fastq file contains the sequencing reads (default: None)'
  type: string
  inputBinding:
    prefix: --input-fastq
- id: output_fast_q
  doc: 'output decomplexed fastq file (default: None)'
  type: string
  inputBinding:
    prefix: --output-fastq
- id: index_fast_q_list
  doc: 'a list of fastq files that contain the cell indices. (default: None)'
  type: string[]
  inputBinding:
    prefix: --index-fastq-list
outputs: []
cwlVersion: v1.1
baseCommand:
- snaptools
- dex-fastq
