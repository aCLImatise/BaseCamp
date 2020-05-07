class: CommandLineTool
id: TOBIAS_MergePDF.cwl
inputs:
- id: input
  doc: '[ [ ...]]  PDF files to join'
  type: boolean
  inputBinding:
    prefix: --input
- id: output
  doc: 'Path to output file (default: ./merged.pdf)'
  type: boolean
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- MergePDF
