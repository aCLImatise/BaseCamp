class: CommandLineTool
id: mergestatetrees.cwl
inputs:
- id: in_state_tree_file_n
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
  dockerPull: quay.io/biocontainers/decifer:0.0.2--py27ha58320b_0
cwlVersion: v1.1
baseCommand:
- mergestatetrees
