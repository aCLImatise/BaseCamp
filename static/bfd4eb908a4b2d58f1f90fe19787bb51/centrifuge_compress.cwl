class: CommandLineTool
id: ../../../centrifuge_compress.pl.cwl
inputs:
- id: map
  doc: ''
  type: string
  inputBinding:
    prefix: -map
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: no_compress
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noCompress
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: maxg
  doc: ''
  type: string
  inputBinding:
    prefix: -maxG
- id: no_dust_masker
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noDustmasker
- id: path_to_download_files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: path_to_tax_no_no_my
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-compress.pl
