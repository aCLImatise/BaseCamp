class: CommandLineTool
id: graph_simplification.py_infile.cwl
inputs:
- id: in_length_minimal_suffix
  doc: Length of minimal suffix for node merging
  type: long
  inputBinding:
    prefix: -l
- id: in_in_file
  doc: outfile
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- graph_simplification.py
- infile
