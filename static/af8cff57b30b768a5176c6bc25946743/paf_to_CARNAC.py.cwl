class: CommandLineTool
id: paf_to_CARNAC.py.cwl
inputs:
- id: in_file_dot_paf
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_reads_dot_fast_a
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
- paf_to_CARNAC.py
