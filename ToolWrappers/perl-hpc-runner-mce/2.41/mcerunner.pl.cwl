class: CommandLineTool
id: mcerunner.pl.cwl
inputs:
- id: in_using_mce
  doc: '- Bool. Default=1.'
  type: boolean?
  inputBinding:
    prefix: --using_mce
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mcerunner.pl
