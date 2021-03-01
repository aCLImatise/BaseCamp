class: CommandLineTool
id: enrichm.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/enrichm:0.6.3--py_0
cwlVersion: v1.1
baseCommand:
- enrichm
