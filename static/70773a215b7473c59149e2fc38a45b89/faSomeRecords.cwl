class: CommandLineTool
id: faSomeRecords.cwl
inputs:
- id: in_exclude
  doc: '- output sequences not in the list file.'
  type: File?
  inputBinding:
    prefix: -exclude
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_exclude
  doc: '- output sequences not in the list file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_exclude)
hints: []
cwlVersion: v1.1
baseCommand:
- faSomeRecords
