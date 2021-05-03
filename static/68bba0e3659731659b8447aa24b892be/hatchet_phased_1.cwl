class: CommandLineTool
id: hatchet_phased_1.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hatchet:0.2.11--py37h22450f8_0
cwlVersion: v1.1
baseCommand:
- hatchet_phased_1
