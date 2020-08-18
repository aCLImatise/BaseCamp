class: CommandLineTool
id: ../../../fermi_unpack.cwl
inputs:
- id: index_read_starting
  doc: index of the read to output, starting from 0 [null]
  type: long
  inputBinding:
    prefix: -i
- id: load_fmindex_memory
  doc: load the FM-index as a memory mapped file
  type: boolean
  inputBinding:
    prefix: -M
- id: seqs_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- unpack
