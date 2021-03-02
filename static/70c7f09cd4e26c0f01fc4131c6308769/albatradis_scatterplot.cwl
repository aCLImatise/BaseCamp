class: CommandLineTool
id: albatradis_scatterplot.cwl
inputs:
- id: in_control
  doc: 'control files (use 2 or more) (default: None)'
  type: long?
  inputBinding:
    prefix: --control
- id: in_condition
  doc: 'condition files (use 2 or more) (default: None)'
  type: long?
  inputBinding:
    prefix: --condition
- id: in_window_size
  doc: 'Window size (default: 50)'
  type: long?
  inputBinding:
    prefix: --window_size
- id: in_output_file
  doc: 'Output filename prefix (default: scatter)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_normalise
  doc: 'normalise the files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --normalise
- id: in_verbose
  doc: "Print out more information while it runs (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output filename prefix (default: scatter)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- albatradis-scatterplot
