class: CommandLineTool
id: add_gff_info_kegg.cwl
inputs:
- id: in_verbose
  doc: "-c, --email TEXT    Contact email  [required]\n-d, --description   Add Kegg\
    \ description\n-p, --pathways      Add pathways ID involved\n-m, --kegg-id TEXT\
    \  In which attribute the Kegg ID is stored (defaults to\n*gene_id*)\n--help \
    \             Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
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
- add-gff-info
- kegg
