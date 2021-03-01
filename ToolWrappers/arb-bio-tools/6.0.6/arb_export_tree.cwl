class: CommandLineTool
id: arb_export_tree.cwl
inputs:
- id: in_bifurcated
  doc: write a bifurcated tree (default is a trifurcated tree)
  type: boolean?
  inputBinding:
    prefix: --bifurcated
- id: in_no_branch_lens
  doc: do not write branchlengths
  type: boolean?
  inputBinding:
    prefix: --nobranchlens
- id: in_double_quotes
  doc: use doublequotes (default is singlequotes)
  type: boolean?
  inputBinding:
    prefix: --doublequotes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arb_export_tree
