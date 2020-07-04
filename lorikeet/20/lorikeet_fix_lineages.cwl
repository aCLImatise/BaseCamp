class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lorikeet_fix_lineages.cwl
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
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fix_lineages
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lorikeet
- fix-lineages
