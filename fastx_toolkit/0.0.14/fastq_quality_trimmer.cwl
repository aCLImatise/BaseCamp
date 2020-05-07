class: CommandLineTool
id: fastq_quality_trimmer.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
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
- fastq_quality_trimmer
