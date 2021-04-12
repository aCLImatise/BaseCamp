class: CommandLineTool
id: .picrust2_pre_unlink.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/picrust2:2.4.1--py_0
cwlVersion: v1.1
baseCommand:
- .picrust2-pre-unlink.sh
