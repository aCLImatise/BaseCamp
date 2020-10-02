class: CommandLineTool
id: menescope.cwl
inputs:
- id: in_draft_net
  doc: metabolic network in SBML format
  type: string
  inputBinding:
    prefix: --draftnet
- id: in_seeds
  doc: "seeds in SBML format\n"
  type: string
  inputBinding:
    prefix: --seeds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- menescope
