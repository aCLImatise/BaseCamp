class: CommandLineTool
id: ../../../medpy_resample.py.cwl
inputs:
- id: in_order
  doc: "the bspline order, default is 2; means nearest\nneighbours; see also medpy_binary_resampling.py"
  type: long
  inputBinding:
    prefix: --order
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_resample.py
