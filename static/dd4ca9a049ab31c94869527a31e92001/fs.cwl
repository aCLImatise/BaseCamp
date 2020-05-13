class: CommandLineTool
id: fs.cwl
inputs:
- id: go
  doc: ': Do the next things that are necessary to get a complete set of finestructure
    runs.'
  type: boolean
  inputBinding:
    prefix: -go
- id: import
  doc: ': Import some settings from an external file. If you need to set any non-trivial
    settings, this is the way to do it. See "fs -hh" for more details.'
  type: File
  inputBinding:
    prefix: -import
- id: create_id
  doc: ': Create an ID file from a PROVIDED phase file. Individuals are labelled IND1-IND<N>.'
  type: File
  inputBinding:
    prefix: -createid
outputs: []
cwlVersion: v1.1
baseCommand:
- fs
