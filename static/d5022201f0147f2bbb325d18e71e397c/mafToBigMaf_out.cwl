class: CommandLineTool
id: mafToBigMaf_out.bed.cwl
inputs:
- id: referenced_b
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToBigMaf
- out.bed
