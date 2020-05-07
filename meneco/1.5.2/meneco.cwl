class: CommandLineTool
id: meneco.py.cwl
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
- id: repair_net
  doc: perform network completion using REPAIRNET a metabolic network in SBML format
  type: string
  inputBinding:
    prefix: --repairnet
- id: enumerate
  doc: enumerate all minimal completions
  type: boolean
  inputBinding:
    prefix: --enumerate
outputs: []
cwlVersion: v1.1
baseCommand:
- meneco.py
