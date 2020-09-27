class: CommandLineTool
id: phizz_build_genes.cwl
inputs:
- id: in_db_name
  doc: "--path TEXT\n--help          Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --db_name
- id: in_gene_file
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
- phizz
- build-genes
