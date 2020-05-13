class: CommandLineTool
id: mafToBigMaf_referenceDb_input.maf.cwl
inputs:
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToBigMaf
- referenceDb
- input.maf
