class: CommandLineTool
id: .amptk_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.1--py_1
cwlVersion: v1.1
baseCommand:
- .amptk-post-link.sh
