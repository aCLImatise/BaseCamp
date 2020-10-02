class: CommandLineTool
id: lsg.cwl
inputs:
- id: in_basename
  doc: '<basename>     # (required)'
  type: boolean
  inputBinding:
    prefix: --basename
- id: in_gsa
  doc: "<GSAFilename>  # (default: '<basename>.pairSA')"
  type: boolean
  inputBinding:
    prefix: --GSA
- id: in_tau
  doc: '<TAU>          # (default: 0)'
  type: boolean
  inputBinding:
    prefix: --TAU
- id: in_cyc_num
  doc: '<CycNum>       # (default: 0)'
  type: boolean
  inputBinding:
    prefix: --CycNum
- id: in_read_length
  doc: '# 0 if unknown or not fixed (default: 0)'
  type: long
  inputBinding:
    prefix: --read-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lsg
