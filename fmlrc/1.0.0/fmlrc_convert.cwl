class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fmlrc_convert.cwl
inputs:
- id: print_version_number
  doc: print version number and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: force_overwrite_false
  doc: 'force overwrite of existing file (default: false)'
  type: boolean
  inputBinding:
    prefix: -f
- id: plain_text_bwt
  doc: 'the plain text BWT file to be converted into msbwt format (default: stdin)'
  type: string
  inputBinding:
    prefix: -i
- id: out_comp_mbswtdotnpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fmlrc-convert
