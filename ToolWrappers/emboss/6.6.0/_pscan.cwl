class: CommandLineTool
id: _pscan.cwl
inputs:
- id: in_emin
  doc: "integer    [2] Minimum number of elements per\nfingerprint (Integer from 1\
    \ to 20)"
  type: boolean
  inputBinding:
    prefix: -emin
- id: in_emax
  doc: "integer    [20] Maximum number of elements per\nfingerprint (Integer up to\
    \ 20)"
  type: boolean
  inputBinding:
    prefix: -emax
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _pscan
