class: CommandLineTool
id: bioconvert_stats.cwl
inputs:
- id: in_verbosity
  doc: Set the outpout verbosity.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_no_plot
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --no-plot
- id: in_formatted_dot
  doc: 'optional arguments:'
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
- bioconvert_stats
