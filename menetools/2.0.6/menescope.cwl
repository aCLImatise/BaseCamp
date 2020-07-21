class: CommandLineTool
id: ../../../menescope.cwl
inputs:
- id: draft_net
  doc: metabolic network in SBML format
  type: string
  inputBinding:
    prefix: --draftnet
- id: seeds
  doc: seeds in SBML format
  type: string
  inputBinding:
    prefix: --seeds
outputs: []
cwlVersion: v1.1
baseCommand:
- menescope
