class: CommandLineTool
id: pangolearn.smk.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolin:2.3.0--py_1
cwlVersion: v1.1
baseCommand:
- pangolearn.smk
