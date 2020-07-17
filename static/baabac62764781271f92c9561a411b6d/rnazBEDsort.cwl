class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnazBEDsort.pl.cwl
inputs:
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazBEDsort.pl
