class: CommandLineTool
id: meneco.py.cwl
inputs:
- id: in_draft_net
  doc: metabolic network in SBML format
  type: string?
  inputBinding:
    prefix: --draftnet
- id: in_seeds
  doc: seeds in SBML format
  type: string?
  inputBinding:
    prefix: --seeds
- id: in_targets
  doc: targets in SBML format
  type: string?
  inputBinding:
    prefix: --targets
- id: in_repair_net
  doc: "perform network completion using REPAIRNET a metabolic\nnetwork in SBML format"
  type: string?
  inputBinding:
    prefix: --repairnet
- id: in_enumerate
  doc: enumerate all minimal completions
  type: boolean?
  inputBinding:
    prefix: --enumerate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- meneco.py
