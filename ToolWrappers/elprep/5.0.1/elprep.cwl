class: CommandLineTool
id: elprep.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/elprep:5.0.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- elprep
