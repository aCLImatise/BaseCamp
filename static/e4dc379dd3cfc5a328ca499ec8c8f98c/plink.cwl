class: CommandLineTool
id: plink.cwl
inputs:
- id: in_list_duplicate_vars
  doc: ', and --score.'
  type: boolean
  inputBinding:
    prefix: --list-duplicate-vars
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plink
