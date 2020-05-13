class: CommandLineTool
id: mmseqs_subtractdbs.cwl
inputs:
- id: e_profile
  doc: 0.001           includes sequences matches with < e-value thr. into the profile
    [>=0.0]
  type: boolean
  inputBinding:
    prefix: --e-profile
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- subtractdbs
