class: CommandLineTool
id: CRISPRessoCount.cwl
inputs:
- id: in_utility
  doc: "perform sgRNA enumeration from deep sequencing data-\n)                  \
    \                           )"
  type: string
  inputBinding:
    prefix: -Utility
- id: in_q
  doc: ''
  type: long
  inputBinding:
    prefix: -q
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CRISPRessoCount
