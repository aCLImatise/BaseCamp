class: CommandLineTool
id: main_cli.py.cwl
inputs:
- id: prot_a
  doc: Path to proteinA.pdb
  type: string
  inputBinding:
    prefix: --protA
- id: prot_b
  doc: Path to proteinB.pdb
  type: string
  inputBinding:
    prefix: --protB
- id: prot_a_chain
  doc: proteinA chain
  type: string
  inputBinding:
    prefix: --protA_chain
- id: prot_b_chain
  doc: proteinB chain
  type: string
  inputBinding:
    prefix: --protB_chain
- id: tabular
  doc: Create tab separated map files
  type: boolean
  inputBinding:
    prefix: --tabular
outputs: []
cwlVersion: v1.1
baseCommand:
- main_cli.py
