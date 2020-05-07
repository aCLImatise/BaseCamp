class: CommandLineTool
id: hyphy_mt.cwl
inputs:
- id: to
  doc: i=0;
  type: string
  inputBinding:
    position: 0
- id: else
  doc: Branch under condition 'echoFlag'
  type: string
  inputBinding:
    position: 1
- id: to
  doc: fprintf(stdout, "\n|------------|-------|-----------|------------|");
  type: string
  inputBinding:
    position: 2
- id: else
  doc: return 0;
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- hyphy
- mt
