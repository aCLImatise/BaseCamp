class: CommandLineTool
id: migrate_n.cwl
inputs:
- id: in_version
  doc: '# shows the current version and exits'
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_no_menu
  doc: '# does not display menu, use this for batch jobs'
  type: boolean?
  inputBinding:
    prefix: -nomenu
- id: in_menu
  doc: '# forces the display of the menu'
  type: boolean?
  inputBinding:
    prefix: -menu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- migrate-n
