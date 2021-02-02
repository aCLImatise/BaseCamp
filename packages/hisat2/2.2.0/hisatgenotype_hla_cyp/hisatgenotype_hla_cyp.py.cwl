class: CommandLineTool
id: hisatgenotype_hla_cyp.py.cwl
inputs:
- id: in_base
  doc: base filename for backbone HLA sequence, HLA variants,
  type: File
  inputBinding:
    prefix: --base
- id: in_hla_list
  doc: 'A comma-separated list of HLA genes (default:'
  type: string
  inputBinding:
    prefix: --hla-list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisatgenotype_hla_cyp.py
