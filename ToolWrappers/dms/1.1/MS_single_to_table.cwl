class: CommandLineTool
id: MS_single_to_table.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dms:1.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- MS-single-to-table
