class: CommandLineTool
id: ../../../mafsInRegion.cwl
inputs:
- id: outdir
  doc: '- output separate files named by bed name field to outDir'
  type: boolean
  inputBinding:
    prefix: -outDir
- id: keep_initial_gaps
  doc: '- keep alignment columns at the beginning and of a block that are gapped in
    all species'
  type: boolean
  inputBinding:
    prefix: -keepInitialGaps
- id: regions_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_maf_vertical_line_outdir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafsInRegion
