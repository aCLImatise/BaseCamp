class: CommandLineTool
id: umi_tools.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/umi_tools:1.1.1--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- umi_tools
