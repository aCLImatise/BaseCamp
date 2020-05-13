class: CommandLineTool
id: SnpSift_intIdx.cwl
inputs:
- id: if
  doc: ': Input offset. Default 0 (i.e. zero-based coordinates).'
  type: string
  inputBinding:
    prefix: -if
- id: i
  doc: ': Genomic intervals in command line.'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- intIdx
