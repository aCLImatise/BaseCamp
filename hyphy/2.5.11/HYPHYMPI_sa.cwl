class: CommandLineTool
id: HYPHYMPI_sa.cwl
inputs:
- id: to
  doc: fprintf(stdout, "Input file contained 3 or fewer sequences - not much inference
    to be done!\n");
  type: string
  inputBinding:
    position: 0
- id: else
  doc: Branch under condition 'randomOption==1'
  type: string
  inputBinding:
    position: 1
- id: to
  doc: treeNodes={filteredData.species,1};
  type: string
  inputBinding:
    position: 2
- id: else
  doc: additionOrder={filteredData.species,1};
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
- sa
