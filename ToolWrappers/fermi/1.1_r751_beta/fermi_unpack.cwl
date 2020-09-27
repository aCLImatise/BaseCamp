class: CommandLineTool
id: fermi_unpack.cwl
inputs:
- id: in_index_read_starting
  doc: index of the read to output, starting from 0 [null]
  type: long
  inputBinding:
    prefix: -i
- id: in_load_fmindex_memory
  doc: load the FM-index as a memory mapped file
  type: boolean
  inputBinding:
    prefix: -M
- id: in_seqs_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi
- unpack
