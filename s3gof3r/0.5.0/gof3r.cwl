class: CommandLineTool
id: gof3r.cwl
inputs:
- id: cp
  doc: 'copy S3 objects (aliases: copy)'
  type: string
  inputBinding:
    position: 0
- id: get
  doc: download from S3
  type: string
  inputBinding:
    position: 1
- id: put
  doc: upload to S3
  type: string
  inputBinding:
    position: 2
- id: rm
  doc: delete from S3
  type: string
  inputBinding:
    position: 3
- id: man_page
  doc: Create gof3r.man man page in current directory
  type: boolean
  inputBinding:
    prefix: --manpage
- id: write_ini
  doc: Write .gof3r.ini in current user's home directory
  type: boolean
  inputBinding:
    prefix: --writeini
outputs: []
cwlVersion: v1.1
baseCommand:
- gof3r
