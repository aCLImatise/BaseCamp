class: CommandLineTool
id: filterfa.cwl
inputs:
- id: in_paired
  doc: if the reads are paired-end
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_merge
  doc: if the reads are paired-end in two files
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_tmp_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filterfa
