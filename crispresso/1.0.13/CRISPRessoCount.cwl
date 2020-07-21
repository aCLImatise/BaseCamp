class: CommandLineTool
id: ../../../CRISPRessoCount.cwl
inputs:
- id: guide_length
  doc: 'Lenght in bp to extract the sgRNA upstream of the tracrRNA sequence (default:
    20)'
  type: string
  inputBinding:
    prefix: --guide_length
- id: keep_intermediate
  doc: 'Keep all the intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_intermediate
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: q
  doc: ''
  type: long
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoCount
