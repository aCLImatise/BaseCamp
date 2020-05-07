class: CommandLineTool
id: rnazBEDsort.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazBEDsort.pl
