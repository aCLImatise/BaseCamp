class: CommandLineTool
id: bam.cwl
inputs:
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tool_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamutil:1.0.15--h8b12597_0
cwlVersion: v1.1
baseCommand:
- bam
