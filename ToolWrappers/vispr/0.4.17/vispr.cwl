class: CommandLineTool
id: vispr.cwl
inputs:
- id: in_debug
  doc: Print debug info.
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vispr:0.4.17--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- vispr
