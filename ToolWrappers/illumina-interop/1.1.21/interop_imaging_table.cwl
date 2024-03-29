class: CommandLineTool
id: interop_imaging_table.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-interop:1.1.21--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- interop_imaging_table
