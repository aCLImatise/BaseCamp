class: CommandLineTool
id: linx.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hmftools-linx:1.13--0
cwlVersion: v1.1
baseCommand:
- linx
