class: CommandLineTool
id: fasta_nucleotide_changer.cwl
inputs:
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
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
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_nucleotide_changer
