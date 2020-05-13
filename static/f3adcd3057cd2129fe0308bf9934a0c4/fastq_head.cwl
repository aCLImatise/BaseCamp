class: CommandLineTool
id: fastq_head.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '10000'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: nlines
  doc: Number of lines to extract.
  type: string
  inputBinding:
    prefix: --nlines
- id: input
  doc: input fastq gzipped or not
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: output file with .gz extension or not
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_head
