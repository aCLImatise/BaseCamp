class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequana_fastq_head.cwl
inputs:
- id: nlines
  doc: Number of lines to extract.
  type: string
  inputBinding:
    prefix: --nlines
- id: input_fastq_gzipped
  doc: input fastq gzipped or not
  type: string
  inputBinding:
    prefix: --input
- id: output_file_extension
  doc: output file with .gz extension or not
  type: string
  inputBinding:
    prefix: --output
- id: fast_q_head
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_fastq_head
