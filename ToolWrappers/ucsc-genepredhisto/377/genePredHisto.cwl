class: CommandLineTool
id: genePredHisto.cwl
inputs:
- id: in_ids
  doc: '- a second column with the gene name, useful for finding outliers.'
  type: boolean?
  inputBinding:
    prefix: -ids
- id: in_what
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gene_pred_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genePredHisto
