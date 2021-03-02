class: CommandLineTool
id: prophyle_assignment.py.cwl
inputs:
- id: in_format_of_output
  doc: format of output [sam]
  type: string?
  inputBinding:
    prefix: -f
- id: in_measure_hhit_countcnormcoverage
  doc: "measure: h1=hit count, c1=coverage, h2=norm.hit count,\nc2=norm.coverage [h1]"
  type: string?
  inputBinding:
    prefix: -m
- id: in_annotate_assignments
  doc: annotate assignments
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_use_lca_tie
  doc: "use LCA when tie (multiple assignments with the same\nscore)"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_use_lca_hits
  doc: use LCA for k-mers (multiple hits of a k-mer)
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_configuration_json_dictionary
  doc: '[STR [STR ...]]  configuration (a JSON dictionary)'
  type: boolean?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle_assignment.py
