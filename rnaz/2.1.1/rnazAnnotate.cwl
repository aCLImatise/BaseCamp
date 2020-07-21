class: CommandLineTool
id: ../../../rnazAnnotate.pl.cwl
inputs:
- id: bed
  doc: Set the annotation BED file with this option.
  type: boolean
  inputBinding:
    prefix: --bed
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazAnnotate.pl
