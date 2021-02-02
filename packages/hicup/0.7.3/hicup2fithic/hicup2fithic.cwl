class: CommandLineTool
id: hicup2fithic.cwl
inputs:
- id: in_digest
  doc: HiCUP Digester generated digest file
  type: boolean
  inputBinding:
    prefix: --digest
- id: in_maximum
  doc: "The maximum allowed distance separation (bps) between contacts\n(selecting\
    \ this option also removes trans contacts)"
  type: boolean
  inputBinding:
    prefix: --maximum
- id: in_minimum
  doc: "The maximum allowed distance separation (bps) between contacts\n(selecting\
    \ this option also removes trans contacts)"
  type: boolean
  inputBinding:
    prefix: --minimum
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicup2fithic
