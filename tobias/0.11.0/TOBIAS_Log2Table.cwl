class: CommandLineTool
id: TOBIAS_Log2Table.cwl
inputs:
- id: log_files
  doc: '[ [ ...]]  Logfiles from PlotAggregate'
  type: boolean
  inputBinding:
    prefix: --logfiles
- id: outdir
  doc: 'Output directory for tables (default: current dir)'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: Prefix of output files
  type: boolean
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- Log2Table
