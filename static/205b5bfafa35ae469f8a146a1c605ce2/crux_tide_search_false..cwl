class: CommandLineTool
id: crux_tide_search_false..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tide_search
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tide_spectra_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crux
- tide-search
- false.
