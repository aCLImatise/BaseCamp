class: CommandLineTool
id: je_dropseq.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_withqualityinreadnameboolean
  doc: WITH_QUALITY_IN_READNAME=Boolean
  type: string
  inputBinding:
    position: 0
- id: in_like
  doc: "'...:ATGCAT333423212322:...' instead of '...:ATGCAT:...'"
  type: string
  inputBinding:
    position: 0
- id: in_maxninteger
  doc: MAX_N=Integer
  type: string
  inputBinding:
    position: 0
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
hints: []
cwlVersion: v1.1
baseCommand:
- je
- dropseq
