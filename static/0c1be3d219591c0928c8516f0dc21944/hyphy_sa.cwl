class: CommandLineTool
id: ../../../hyphy_sa.cwl
inputs:
- id: fprintfstdout
  doc: fprintf(stdout, "Input file contained 3 or fewer sequences - not much inference
    to be done!\n");
  type: string
  inputBinding:
    position: 0
- id: branch_under_condition
  doc: Branch under condition 'randomOption==1'
  type: string
  inputBinding:
    position: 1
- id: treenodes
  doc: treeNodes={filteredData.species,1};
  type: string
  inputBinding:
    position: 2
- id: additionorder
  doc: additionOrder={filteredData.species,1};
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- hyphy
- sa
