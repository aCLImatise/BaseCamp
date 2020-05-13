class: CommandLineTool
id: fastq_to_fasta.cwl
inputs:
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
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
- fastq_to_fasta
