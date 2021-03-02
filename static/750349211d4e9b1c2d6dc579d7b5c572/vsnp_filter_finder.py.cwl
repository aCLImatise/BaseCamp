class: CommandLineTool
id: vsnp_filter_finder.py.cwl
inputs:
- id: in_cwd
  doc: "Working directoy to be added as path to dependency\nfiles."
  type: Directory?
  inputBinding:
    prefix: --cwd
- id: in_filters
  doc: Defining SNPs/Filter file
  type: File?
  inputBinding:
    prefix: --filters
- id: in_group
  doc: Group/directory name
  type: Directory?
  inputBinding:
    prefix: --group
- id: in_debug
  doc: turn off map.pooling of samples
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_prog
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
- vsnp_filter_finder.py
