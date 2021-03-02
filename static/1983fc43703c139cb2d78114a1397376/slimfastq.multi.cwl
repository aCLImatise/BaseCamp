class: CommandLineTool
id: slimfastq.multi.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/slimfastq:2.04--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- slimfastq.multi
