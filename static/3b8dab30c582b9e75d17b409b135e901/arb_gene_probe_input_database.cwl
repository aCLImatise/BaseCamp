class: CommandLineTool
id: arb_gene_probe_input_database.cwl
inputs:
- id: output_database
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_gene_probe
- input_database
