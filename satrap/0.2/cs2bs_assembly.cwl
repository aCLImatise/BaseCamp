class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cs2bs_assembly.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: -fasta
- id: sam
  doc: ''
  type: string
  inputBinding:
    prefix: -sam
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- cs2bs_assembly
