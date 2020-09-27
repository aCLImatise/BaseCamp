class: CommandLineTool
id: menepath.cwl
inputs:
- id: in_draft_net
  doc: metabolic network in SBML format
  type: string
  inputBinding:
    prefix: --draftnet
- id: in_seeds
  doc: seeds in SBML format
  type: string
  inputBinding:
    prefix: --seeds
- id: in_targets
  doc: targets in SBML format
  type: string
  inputBinding:
    prefix: --targets
- id: in_min
  doc: call this option to obtain minimal-size paths
  type: boolean
  inputBinding:
    prefix: --min
- id: in_enumerate
  doc: call this option for an enumeration of solutions
  type: boolean
  inputBinding:
    prefix: --enumerate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- menepath
