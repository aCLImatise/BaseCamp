class: CommandLineTool
id: normalize_oneD.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tadbit:1.0.1--py38h6ed170a_0
cwlVersion: v1.1
baseCommand:
- normalize_oneD.R
