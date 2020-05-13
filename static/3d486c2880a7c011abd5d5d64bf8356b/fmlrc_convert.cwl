class: CommandLineTool
id: fmlrc_convert.cwl
inputs:
- id: out_comp_mb_swt_npy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: print version number and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: 'force overwrite of existing file (default: false)'
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: 'the plain text BWT file to be converted into msbwt format (default: stdin)'
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- fmlrc-convert
