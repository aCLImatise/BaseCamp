class: CommandLineTool
id: ../../../2ft.cwl
inputs:
- id: translate_only_reverse
  doc: ': translate only reverse (antisense) strand.'
  type: boolean
  inputBinding:
    prefix: -r
- id: translate_only_strand
  doc: ': translate only sense strand.'
  type: boolean
  inputBinding:
    prefix: -s
- id: value_specifies_default
  doc: '<value>: specifies the output width (default: 60).'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- 2ft
