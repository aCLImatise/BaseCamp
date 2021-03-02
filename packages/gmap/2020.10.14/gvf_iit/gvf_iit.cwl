class: CommandLineTool
id: gvf_iit.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- gvf_iit
