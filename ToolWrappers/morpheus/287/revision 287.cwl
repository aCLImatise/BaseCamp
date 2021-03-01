class: CommandLineTool
id: revision 287.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/morpheus:287--0
cwlVersion: v1.1
baseCommand:
- revision 287
