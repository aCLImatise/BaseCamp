class: CommandLineTool
id: hyphy_red.cwl
inputs:
- id: in_branch_under_condition
  doc: Branch under condition 'doLengths<0.5'
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: return RerootTree(treeString,0);
  type: string
  inputBinding:
    position: 1
- id: in_return_treestring
  doc: return treeString;
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hyphy:2.5.30--h3db2f75_0
cwlVersion: v1.1
baseCommand:
- hyphy
- red
