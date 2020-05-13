class: CommandLineTool
id: mmseqs_summarizeheaders.cwl
inputs:
- id: header_type
  doc: '1               Header Type: 1 Uniclust, 2 Metaclust                        '
  type: boolean
  inputBinding:
    prefix: --header-type
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
- summarizeheaders
