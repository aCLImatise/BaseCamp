class: CommandLineTool
id: expressionFromGenomicSet.py.cwl
inputs:
- id: dist
  doc: 'threshDist of GenomicReginSet.filter_by_gene_association_old. [default: 50000]'
  type: string
  inputBinding:
    prefix: --dist
outputs: []
cwlVersion: v1.1
baseCommand:
- expressionFromGenomicSet.py
