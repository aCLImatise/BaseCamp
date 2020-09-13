class: CommandLineTool
id: ../../../bioconvert.cwl
inputs:
- id: in_verbosity
  doc: Set the outpout verbosity.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_level
  doc: Set the outpout verbosity. Same as --verbosity
  type: string
  inputBinding:
    prefix: --level
- id: in_dependency_report
  doc: Output all bioconvert dependencies in json and exit
  type: boolean
  inputBinding:
    prefix: --dependency-report
- id: in_allow_indirect_conversion
  doc: "Show all possible indirect conversions (labelled as\nintermediate)"
  type: boolean
  inputBinding:
    prefix: --allow-indirect-conversion
- id: in_conversion_graph
  doc: '[{cytoscape,cytoscape-all}]'
  type: boolean
  inputBinding:
    prefix: --conversion-graph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioconvert
