class: CommandLineTool
id: anvi_import_items_order_misc_data_items_order.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string?
  inputBinding:
    prefix: --name
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_an_vi_import_items_order
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File?
  inputBinding:
    position: 1
- id: in_var_5
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-import-items-order
- misc-data-items-order
