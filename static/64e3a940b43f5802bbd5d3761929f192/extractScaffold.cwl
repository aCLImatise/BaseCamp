class: CommandLineTool
id: extractScaffold.cwl
inputs:
- id: in__bank_operated
  doc: '- The bank to be operated on.'
  type: string
  inputBinding:
    prefix: -b
- id: in_iid_scaffold_extracted
  doc: '- The IID of the scaffold the be extracted .'
  type: string
  inputBinding:
    prefix: -s
- id: in_name_new_bank
  doc: '- The name of the new bank consisting of the.'
  type: string
  inputBinding:
    prefix: -n
- id: in_list_scaffolds_stdout
  doc: '- list the scaffolds in the given bank to stdout. The order is'
  type: boolean
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extractScaffold
