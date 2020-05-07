class: CommandLineTool
id: _pscan.cwl
inputs:
- id: emin
  doc: integer    [2] Minimum number of elements per fingerprint (Integer from 1 to
    20)
  type: boolean
  inputBinding:
    prefix: -emin
- id: emax
  doc: integer    [20] Maximum number of elements per fingerprint (Integer up to 20)
  type: boolean
  inputBinding:
    prefix: -emax
outputs: []
cwlVersion: v1.1
baseCommand:
- _pscan
