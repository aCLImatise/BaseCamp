class: CommandLineTool
id: rsat_add_gene_info.cwl
inputs:
- id: in_add_gene_info
  doc: DESCRIPTION
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- add-gene-info
