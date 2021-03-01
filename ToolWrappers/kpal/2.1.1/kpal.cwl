class: CommandLineTool
id: kpal.cwl
inputs:
- id: in_show_programs_number
  doc: show program's version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kpal
