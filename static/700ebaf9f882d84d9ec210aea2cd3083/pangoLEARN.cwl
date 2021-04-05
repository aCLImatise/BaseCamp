class: CommandLineTool
id: pangoLEARN.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolearn:2021.03.16--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- pangoLEARN
