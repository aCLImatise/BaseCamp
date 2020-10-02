class: CommandLineTool
id: blastdbcp.cwl
inputs:
- id: in_gi_list
  doc: '[-title database_title] [-membership_bits]'
  type: File
  inputBinding:
    prefix: -gilist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blastdbcp
