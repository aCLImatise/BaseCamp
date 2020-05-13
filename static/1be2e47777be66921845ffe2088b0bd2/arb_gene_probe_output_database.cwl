class: CommandLineTool
id: arb_gene_probe_output_database.cwl
inputs:
- id: input_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_database
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_gene_probe
- output_database
