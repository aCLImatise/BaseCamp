class: CommandLineTool
id: fio_info.cwl
inputs:
- id: in_layer
  doc: "|NAME      Print information about a specific layer.  The first\nlayer is\
    \ used by default.  Layers use zero-based\nnumbering when accessed by index."
  type: string?
  inputBinding:
    prefix: --layer
- id: in_indent
  doc: Indentation level for JSON output
  type: long?
  inputBinding:
    prefix: --indent
- id: in_count
  doc: Print the count of features.
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_format
  doc: Print the format driver.
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_crs
  doc: Print the CRS as a PROJ.4 string.
  type: boolean?
  inputBinding:
    prefix: --crs
- id: in_bounds
  doc: "Print the boundary coordinates (left, bottom, right,\ntop)."
  type: boolean?
  inputBinding:
    prefix: --bounds
- id: in_name
  doc: Print the datasource's name.
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fiona:1.8.6
cwlVersion: v1.1
baseCommand:
- fio
- info
