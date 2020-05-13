class: CommandLineTool
id: module_enrichment.py.cwl
inputs:
- id: annotate
  doc: Annotate correls.txt file
  type: string
  inputBinding:
    position: 0
- id: perms
  doc: Run permutation generation
  type: string
  inputBinding:
    position: 1
- id: stats
  doc: Generate p-values from the permutations
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- module_enrichment.py
