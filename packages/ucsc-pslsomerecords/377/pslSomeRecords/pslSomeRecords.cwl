class: CommandLineTool
id: pslSomeRecords.cwl
inputs:
- id: in_not
  doc: '- include psl if name is NOT in list'
  type: boolean
  inputBinding:
    prefix: -not
- id: in_t_too
  doc: "- if set, the list file is two column, qName and tName.\nIn this case only\
    \ records matching on both q and t are\noutput\n"
  type: File
  inputBinding:
    prefix: -tToo
- id: in_psl_in
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
- id: out_t_too
  doc: "- if set, the list file is two column, qName and tName.\nIn this case only\
    \ records matching on both q and t are\noutput\n"
  type: File
  outputBinding:
    glob: $(inputs.in_t_too)
cwlVersion: v1.1
baseCommand:
- pslSomeRecords
