class: CommandLineTool
id: cpgcdifenrichhist.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmult:0.0.0.2--r40h8b68381_0
cwlVersion: v1.1
baseCommand:
- cpgcdifenrichhist.R
