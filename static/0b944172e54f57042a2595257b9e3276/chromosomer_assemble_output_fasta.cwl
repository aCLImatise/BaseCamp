class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer_assemble_output_fasta.cwl
inputs:
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: assemble
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fragment_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- assemble
- output_fasta
