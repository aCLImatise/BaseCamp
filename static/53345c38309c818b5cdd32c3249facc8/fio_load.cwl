class: CommandLineTool
id: fio_load.cwl
inputs:
- id: in_format
  doc: Output format driver name.  [required]
  type: string?
  inputBinding:
    prefix: --format
- id: in_src_crs
  doc: Source CRS.
  type: string?
  inputBinding:
    prefix: --src-crs
- id: in_dst_crs
  doc: "Destination CRS.  Defaults to --src-crs when\nnot given."
  type: string?
  inputBinding:
    prefix: --dst-crs
- id: in_layer
  doc: "|NAME           Load features into specified layer.  Layers use\nzero-based\
    \ numbering when accessed by index."
  type: string?
  inputBinding:
    prefix: --layer
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_features_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- load
