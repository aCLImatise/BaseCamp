class: CommandLineTool
id: hca_mtx_to_10x.cwl
inputs:
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hca-matrix-downloader:0.0.4--py_0
cwlVersion: v1.1
baseCommand:
- hca-mtx-to-10x
