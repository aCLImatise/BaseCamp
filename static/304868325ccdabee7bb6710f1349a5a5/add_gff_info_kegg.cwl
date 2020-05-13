class: CommandLineTool
id: add_gff_info_kegg.cwl
inputs:
- id: email
  doc: Contact email  [required]
  type: string
  inputBinding:
    prefix: --email
- id: description
  doc: Add Kegg description
  type: boolean
  inputBinding:
    prefix: --description
- id: pathways
  doc: Add pathways ID involved
  type: boolean
  inputBinding:
    prefix: --pathways
- id: kegg_id
  doc: In which attribute the Kegg ID is stored (defaults to *gene_id*)
  type: string
  inputBinding:
    prefix: --kegg-id
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- kegg
