class: CommandLineTool
id: ChorusPBGUI.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chorus2:2.0.1--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- ChorusPBGUI
