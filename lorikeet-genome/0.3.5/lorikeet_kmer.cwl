class: CommandLineTool
id: ../../../lorikeet_kmer.cwl
inputs:
- id: in_full_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    prefix: --reference
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lorikeet
- kmer
