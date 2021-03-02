class: CommandLineTool
id: clustalw2phylip.cwl
inputs:
- id: in_clustalw_two_phy_i_lip
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_clustalw_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- clustalw2phylip
