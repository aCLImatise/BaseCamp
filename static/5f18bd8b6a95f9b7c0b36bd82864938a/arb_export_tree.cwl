class: CommandLineTool
id: arb_export_tree.cwl
inputs:
- id: bifurcated
  doc: write a bifurcated tree (default is a trifurcated tree)
  type: boolean
  inputBinding:
    prefix: --bifurcated
- id: no_branch_lens
  doc: do not write branchlengths
  type: boolean
  inputBinding:
    prefix: --nobranchlens
- id: double_quotes
  doc: use doublequotes (default is singlequotes)
  type: boolean
  inputBinding:
    prefix: --doublequotes
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_export_tree
