class: CommandLineTool
id: ../../../fasta_nucleotide_changer.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta_nucleotide_changer
