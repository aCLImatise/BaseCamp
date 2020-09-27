class: CommandLineTool
id: centrifuge_compress.pl.cwl
inputs:
- id: in_no_dust_masker
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noDustmasker
- id: in_maxg
  doc: ''
  type: long
  inputBinding:
    prefix: -maxG
- id: in_t
  doc: ''
  type: long
  inputBinding:
    prefix: -t
- id: in_no_compress
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noCompress
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_map
  doc: ''
  type: string
  inputBinding:
    prefix: -map
- id: in_path_to_download_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path_to_tax_no_no_my
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- centrifuge-compress.pl
