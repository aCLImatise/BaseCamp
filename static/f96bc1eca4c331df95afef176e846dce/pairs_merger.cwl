class: CommandLineTool
id: pairs_merger.cwl
inputs:
- id: in_in_three_dot_pairs_do_tgz
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pairs_merger
