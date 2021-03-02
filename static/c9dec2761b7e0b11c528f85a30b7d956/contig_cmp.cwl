class: CommandLineTool
id: contig_cmp.cwl
inputs:
- id: in_a_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_b_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- contig-cmp
