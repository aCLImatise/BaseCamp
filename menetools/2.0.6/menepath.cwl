class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/menepath.cwl
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
- id: min
  doc: call this option to obtain minimal-size paths
  type: boolean
  inputBinding:
    prefix: --min
- id: enumerate
  doc: call this option for an enumeration of solutions
  type: boolean
  inputBinding:
    prefix: --enumerate
outputs: []
cwlVersion: v1.1
baseCommand:
- menepath
