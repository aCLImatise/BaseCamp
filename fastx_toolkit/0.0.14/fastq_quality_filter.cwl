class: CommandLineTool
id: fastq_quality_filter.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_quality_filter
