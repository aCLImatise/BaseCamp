class: CommandLineTool
id: bamindex.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- bamindex
