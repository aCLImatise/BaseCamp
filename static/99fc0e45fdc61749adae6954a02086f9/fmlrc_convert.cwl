class: CommandLineTool
id: fmlrc_convert.cwl
inputs:
- id: in_print_version_number
  doc: print version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_force_overwrite_false
  doc: 'force overwrite of existing file (default: false)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_plain_text_bwt
  doc: 'the plain text BWT file to be converted into msbwt format (default: stdin)'
  type: File?
  inputBinding:
    prefix: -i
- id: in_out_comp_mbswtdotnpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fmlrc-convert
