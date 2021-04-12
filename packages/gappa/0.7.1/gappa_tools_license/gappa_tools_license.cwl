class: CommandLineTool
id: gappa_tools_license.cwl
inputs:
- id: in_full
  doc: If set, show the full license instead of the short boilerplate.
  type: boolean?
  inputBinding:
    prefix: --full
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.1--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- tools
- license
