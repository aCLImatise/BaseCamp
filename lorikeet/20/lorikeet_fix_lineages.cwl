class: CommandLineTool
id: lorikeet_fix_lineages.cwl
inputs:
- id: distance
  doc: Maximum distance to consider closest neighbors. [Default=500]
  type: string
  inputBinding:
    prefix: --distance
- id: fraction
  doc: Fraction of closest neighbors that need to agree to perform change. [Default=0.6]
  type: string
  inputBinding:
    prefix: --fraction
outputs: []
cwlVersion: v1.1
baseCommand:
- lorikeet
- fix-lineages
