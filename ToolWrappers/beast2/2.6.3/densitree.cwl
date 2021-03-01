class: CommandLineTool
id: densitree.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0
cwlVersion: v1.1
baseCommand:
- densitree
