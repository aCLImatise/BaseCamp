class: CommandLineTool
id: peakranger_lc.cwl
inputs:
- id: in_arg_data_file
  doc: '[ --data ] arg      the data file'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_verbose
  doc: show progress when possible
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- peakranger
- lc
