class: CommandLineTool
id: ChorusGUI.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chorus2:2.01--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ChorusGUI
