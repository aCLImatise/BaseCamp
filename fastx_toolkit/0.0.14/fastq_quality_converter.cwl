class: CommandLineTool
id: fastq_quality_converter.cwl
inputs:
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
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
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_quality_converter
