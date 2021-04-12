class: CommandLineTool
id: cooler_cp.cwl
inputs:
- id: in_overwrite
  doc: Truncate and replace destination file if it already exists.
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_src_uri
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dst_uri
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
  dockerPull: quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- cp
