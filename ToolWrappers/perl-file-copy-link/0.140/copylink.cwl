class: CommandLineTool
id: copylink.cwl
inputs:
- id: in_a_usrlocalbincopylink_line
  doc: "a link\nat /usr/local/bin/copylink line 9.\n"
  type: long?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- copylink
