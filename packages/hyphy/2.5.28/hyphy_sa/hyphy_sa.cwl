class: CommandLineTool
id: hyphy_sa.cwl
inputs:
- id: in_fprintfstdout
  doc: fprintf(stdout, "Input file contained 3 or fewer sequences - not much inference
    to be done!\n");
  type: string
  inputBinding:
    position: 0
- id: in_branch_under_condition
  doc: Branch under condition 'randomOption==1'
  type: string
  inputBinding:
    position: 1
- id: in_treenodes
  doc: treeNodes={filteredData.species,1};
  type: string
  inputBinding:
    position: 2
- id: in_additionorder
  doc: additionOrder={filteredData.species,1};
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hyphy:2.5.28--h3db2f75_0
cwlVersion: v1.1
baseCommand:
- hyphy
- sa
