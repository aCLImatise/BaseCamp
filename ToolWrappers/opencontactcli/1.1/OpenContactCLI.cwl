class: CommandLineTool
id: OpenContactCLI.cwl
inputs:
- id: in_prot_a
  doc: Path to proteinA.pdb
  type: File?
  inputBinding:
    prefix: --protA
- id: in_prot_b
  doc: Path to proteinB.pdb
  type: File?
  inputBinding:
    prefix: --protB
- id: in_prot_a_chain
  doc: proteinA chain
  type: string?
  inputBinding:
    prefix: --protA_chain
- id: in_prot_b_chain
  doc: proteinB chain
  type: string?
  inputBinding:
    prefix: --protB_chain
- id: in_tabular
  doc: Create tab separated map files
  type: boolean?
  inputBinding:
    prefix: --tabular
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- OpenContactCLI
