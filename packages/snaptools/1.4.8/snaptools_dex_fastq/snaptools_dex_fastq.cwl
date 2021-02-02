class: CommandLineTool
id: snaptools_dex_fastq.cwl
inputs:
- id: in_input_fast_q
  doc: "fastq file contains the sequencing reads (default:\nNone)"
  type: File
  inputBinding:
    prefix: --input-fastq
- id: in_output_fast_q
  doc: 'output decomplexed fastq file (default: None)'
  type: File
  inputBinding:
    prefix: --output-fastq
- id: in_index_fast_q_list
  doc: "a list of fastq files that contain the cell indices.\n(default: None)\n"
  type: string[]
  inputBinding:
    prefix: --index-fastq-list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fast_q
  doc: 'output decomplexed fastq file (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_fast_q)
cwlVersion: v1.1
baseCommand:
- snaptools
- dex-fastq
