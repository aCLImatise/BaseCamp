class: CommandLineTool
id: filter_components.py_infile_minlength.cwl
inputs:
- id: in_filter_components_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_minlength
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_components.py
- infile
- minlength
