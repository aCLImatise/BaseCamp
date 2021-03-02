class: CommandLineTool
id: add_gff_info_kegg.cwl
inputs:
- id: in_verbose
  doc: Contact email  [required]
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_description
  doc: Add Kegg description
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_pathways
  doc: Add pathways ID involved
  type: boolean?
  inputBinding:
    prefix: --pathways
- id: in_kegg_id
  doc: "In which attribute the Kegg ID is stored (defaults to\n*gene_id*)"
  type: string?
  inputBinding:
    prefix: --kegg-id
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- kegg
