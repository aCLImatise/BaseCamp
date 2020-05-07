class: CommandLineTool
id: mccortex63_calls2vcf.cwl
inputs:
- id: match
  doc: '[default:  1]'
  type: string
  inputBinding:
    prefix: --match
- id: mismatch
  doc: '[default: -2]'
  type: string
  inputBinding:
    prefix: --mismatch
- id: gap_open
  doc: '[default: -4]'
  type: string
  inputBinding:
    prefix: --gap-open
- id: gap_extend
  doc: '[default: -1]'
  type: string
  inputBinding:
    prefix: --gap-extend
outputs: []
cwlVersion: v1.1
baseCommand:
- mccortex63
- calls2vcf
