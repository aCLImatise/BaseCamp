class: CommandLineTool
id: iit_dump_iitfile.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i_it_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- iit_dump
- iitfile
