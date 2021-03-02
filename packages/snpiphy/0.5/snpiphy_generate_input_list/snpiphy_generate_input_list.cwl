class: CommandLineTool
id: snpiphy_generate_input_list.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snpiphy:0.5--py_0
cwlVersion: v1.1
baseCommand:
- snpiphy_generate_input_list
