class: CommandLineTool
id: mafToBigMaf_referenceDb_out.bed.cwl
inputs:
- id: input_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToBigMaf
- referenceDb
- out.bed
