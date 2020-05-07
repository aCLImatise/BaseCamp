class: CommandLineTool
id: tandem_genotypes_join.cwl
inputs:
- id: shrink
  doc: shrink the output
  type: boolean
  inputBinding:
    prefix: --shrink
- id: mean
  doc: 'type of mean for positive/patient/case files: 1=ordinary, 3=cubic (default=1)'
  type: string
  inputBinding:
    prefix: --mean
- id: scores
  doc: importance scores for gene parts
  type: File
  inputBinding:
    prefix: --scores
- id: verbose
  doc: show more details
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- tandem-genotypes-join
