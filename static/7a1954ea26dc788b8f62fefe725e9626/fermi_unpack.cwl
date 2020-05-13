class: CommandLineTool
id: fermi_unpack.cwl
inputs:
- id: seqs_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: index of the read to output, starting from 0 [null]
  type: long
  inputBinding:
    prefix: -i
- id: m
  doc: load the FM-index as a memory mapped file
  type: boolean
  inputBinding:
    prefix: -M
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- unpack
