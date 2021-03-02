class: CommandLineTool
id: fcontrast.cwl
inputs:
- id: in_vary_within
  doc: boolean    [N] Within-population variation in data
  type: boolean?
  inputBinding:
    prefix: -varywithin
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fcontrast
