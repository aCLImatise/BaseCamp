class: CommandLineTool
id: gof3r.cwl
inputs:
- id: in_man_page
  doc: Create gof3r.man man page in current directory
  type: boolean
  inputBinding:
    prefix: --manpage
- id: in_write_ini
  doc: Write .gof3r.ini in current user's home directory
  type: boolean
  inputBinding:
    prefix: --writeini
- id: in_cp
  doc: 'copy S3 objects (aliases: copy)'
  type: string
  inputBinding:
    position: 0
- id: in_get
  doc: download from S3
  type: string
  inputBinding:
    position: 1
- id: in_put
  doc: upload to S3
  type: string
  inputBinding:
    position: 2
- id: in_rm
  doc: delete from S3
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gof3r
