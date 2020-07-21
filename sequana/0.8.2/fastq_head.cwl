class: CommandLineTool
id: ../../../fastq_head.cwl
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
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_head
