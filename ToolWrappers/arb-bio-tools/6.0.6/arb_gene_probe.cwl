class: CommandLineTool
id: arb_gene_probe.cwl
inputs:
- id: in_input_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_database
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arb_gene_probe
