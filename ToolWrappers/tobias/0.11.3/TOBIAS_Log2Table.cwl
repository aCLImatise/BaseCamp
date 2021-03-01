class: CommandLineTool
id: TOBIAS_Log2Table.cwl
inputs:
- id: in_log_files
  doc: '[ [ ...]]  Logfiles from PlotAggregate'
  type: boolean?
  inputBinding:
    prefix: --logfiles
- id: in_outdir
  doc: 'Output directory for tables (default: current dir)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: Prefix of output files
  type: boolean?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory for tables (default: current dir)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- Log2Table
