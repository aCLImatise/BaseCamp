class: CommandLineTool
id: filter_badlist.pl.cwl
inputs:
- id: f
  doc: Flag to fix the file.
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: Output those genes that are in the list.
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_badlist.pl
