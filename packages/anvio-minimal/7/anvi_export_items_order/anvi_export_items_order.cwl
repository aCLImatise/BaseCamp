class: CommandLineTool
id: anvi_export_items_order.cwl
inputs:
- id: in_path__dbpath
  doc: "PATH, --db-path DB PATH\nAn appropriate anvi'o database. (default: None)"
  type: File?
  inputBinding:
    prefix: -p
- id: in_name_name_dontprovide
  doc: "NAME     The name of the order you want to export. If you don't\nprovide an\
    \ order name, anvi'o will show you the names\nof all available orders in the database.\
    \ (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --name
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_path
  doc: ''
  type: File?
  inputBinding:
    position: 0
- id: in_var_4
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-export-items-order
