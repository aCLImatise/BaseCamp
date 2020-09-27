class: CommandLineTool
id: je_dropseq.cwl
inputs:
- id: in_displays_options_specific
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_becomes
  doc: "'@D3FCO8P1:178:C1WLBACXX:7:1101:1836:1965:1:N:0:BARCODE'"
  type: string
  inputBinding:
    position: 0
- id: in_path_dot
  doc: 'Required. '
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- je
- dropseq
