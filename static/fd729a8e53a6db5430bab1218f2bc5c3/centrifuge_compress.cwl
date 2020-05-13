class: CommandLineTool
id: centrifuge_compress.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: centrifuge_compress_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: path_to_download_files
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: path_to_tax_no_no_my
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: '1'
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: '50000000'
  doc: ''
  type: string
  inputBinding:
    position: 5
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
  type: boolean
  inputBinding:
    prefix: -t
- id: maxg
  doc: ''
  type: boolean
  inputBinding:
    prefix: -maxG
- id: no_dust_masker
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noDustmasker
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-compress.pl
