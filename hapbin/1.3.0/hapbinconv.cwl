class: CommandLineTool
id: hapbinconv.cwl
inputs:
- id: hap
  doc: ASCII Hap file
  type: boolean
  inputBinding:
    prefix: --hap
- id: out
  doc: Binary output file
  type: boolean
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- hapbinconv
