class: CommandLineTool
id: bamzztoname.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- bamzztoname
