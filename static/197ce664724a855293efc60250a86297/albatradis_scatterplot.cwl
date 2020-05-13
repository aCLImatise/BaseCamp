class: CommandLineTool
id: albatradis_scatterplot.cwl
inputs:
- id: control
  doc: 'control files (use 2 or more) (default: None)'
  type: string
  inputBinding:
    prefix: --control
- id: condition
  doc: 'condition files (use 2 or more) (default: None)'
  type: string
  inputBinding:
    prefix: --condition
- id: window_size
  doc: 'Window size (default: 50)'
  type: string
  inputBinding:
    prefix: --window_size
- id: output_file
  doc: 'Output filename prefix (default: scatter)'
  type: string
  inputBinding:
    prefix: --outputfile
- id: normalise
  doc: 'normalise the files (default: False)'
  type: boolean
  inputBinding:
    prefix: --normalise
- id: verbose
  doc: 'Print out more information while it runs (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- albatradis-scatterplot
