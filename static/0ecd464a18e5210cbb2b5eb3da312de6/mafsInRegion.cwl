class: CommandLineTool
id: mafsInRegion.cwl
inputs:
- id: output
  doc: files named by bed name field to outDir
  type: string
  inputBinding:
    prefix: '- output'
- id: keep_initial_gaps
  doc: columns at the beginning and of a block that are gapped in all species
  type: string
  inputBinding:
    prefix: -keepInitialGaps
outputs: []
cwlVersion: v1.1
baseCommand:
- mafsInRegion
