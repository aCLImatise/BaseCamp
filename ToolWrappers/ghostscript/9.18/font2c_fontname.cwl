class: CommandLineTool
id: font2c_fontname.cwl
inputs:
- id: in_nostringval
  doc: cfile   (--help)   (w)
  type: boolean?
  inputBinding:
    prefix: --nostringval--
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- font2c
- fontname
