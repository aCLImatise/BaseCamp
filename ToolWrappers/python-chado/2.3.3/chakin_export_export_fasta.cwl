class: CommandLineTool
id: chakin_export_export_fasta.cwl
inputs:
- id: in_file
  doc: If true, write to files in CWD
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chakin
- export
- export_fasta
