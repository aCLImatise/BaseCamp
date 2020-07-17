class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophyle_assignment.py.cwl
inputs:
- id: format_of_output
  doc: format of output [sam]
  type: string
  inputBinding:
    prefix: -f
- id: measure_hhit_cnormcoverage
  doc: 'measure: h1=hit count, c1=coverage, h2=norm.hit count, c2=norm.coverage [h1]'
  type: string
  inputBinding:
    prefix: -m
- id: annotate_assignments
  doc: annotate assignments
  type: boolean
  inputBinding:
    prefix: -A
- id: use_lca_tie
  doc: use LCA when tie (multiple assignments with the same score)
  type: boolean
  inputBinding:
    prefix: -L
- id: use_lca_kmers
  doc: use LCA for k-mers (multiple hits of a k-mer)
  type: boolean
  inputBinding:
    prefix: -X
- id: configuration_json_dictionary
  doc: '[STR [STR ...]]  configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_assignment.py
