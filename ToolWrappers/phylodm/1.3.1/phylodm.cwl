class: CommandLineTool
id: phylodm.cwl
inputs:
- id: in_newick
  doc: path to the newick file
  type: string
  inputBinding:
    position: 0
- id: in_method
  doc: use patristic distance {pd} or node distance {node}
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: path to output matrix
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylodm:1.3.1--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- phylodm
