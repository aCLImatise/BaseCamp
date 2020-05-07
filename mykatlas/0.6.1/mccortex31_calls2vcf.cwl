class: CommandLineTool
id: mccortex31_calls2vcf.cwl
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
- mccortex31
- calls2vcf
