class: CommandLineTool
id: check_disorder.pl.cwl
inputs:
- id: in_list
  doc: list all IDs that have children features appearing in front of themselves
  type: boolean
  inputBinding:
    prefix: --list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- check-disorder.pl
