class: CommandLineTool
id: genePredFilter.cwl
inputs:
- id: in_db
  doc: "- If specified, then this database is used to\nget chromosome sizes."
  type: string
  inputBinding:
    prefix: -db
- id: in_verbose
  doc: '- level >= 2 prints out errors for each problem found.'
  type: long
  inputBinding:
    prefix: -verbose
- id: in_gene_pred_in
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genePredFilter
