class: CommandLineTool
id: ../../../menecheck.cwl
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
- id: targets
  doc: targets in SBML format
  type: string
  inputBinding:
    prefix: --targets
outputs: []
cwlVersion: v1.1
baseCommand:
- menecheck
