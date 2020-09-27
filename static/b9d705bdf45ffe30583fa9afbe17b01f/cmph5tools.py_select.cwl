class: CommandLineTool
id: cmph5tools.py_select.cwl
inputs:
- id: in_idx_s
  doc: ''
  type: string[]
  inputBinding:
    prefix: --idxs
- id: in_outfile
  doc: ''
  type: long
  inputBinding:
    prefix: --outFile
- id: in_input_dot_cmp_doth_five
  doc: Create a new cmp.h5 file by selecting alignments. Users can specify indices
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- select
