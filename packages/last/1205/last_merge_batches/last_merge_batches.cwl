class: CommandLineTool
id: last_merge_batches.cwl
inputs:
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1205--h8b12597_0
cwlVersion: v1.1
baseCommand:
- last-merge-batches
