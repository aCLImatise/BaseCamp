class: CommandLineTool
id: dx_jobutil_dxlink.cwl
inputs:
- id: in_object
  doc: "Data object ID or \"<Project ID>:<Data object ID>\" to package\ninto a DNAnexus\
    \ link"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- dx-jobutil-dxlink
