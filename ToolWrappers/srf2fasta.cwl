class: CommandLineTool
id: srf2fasta.cwl
inputs:
- id: in_c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
- id: in_archive_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- srf2fasta
