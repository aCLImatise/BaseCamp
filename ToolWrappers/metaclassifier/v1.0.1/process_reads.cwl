class: CommandLineTool
id: process_reads.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaclassifier:v1.0.1--py_0
cwlVersion: v1.1
baseCommand:
- process_reads
