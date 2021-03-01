class: CommandLineTool
id: drive_issue.cwl
inputs:
- id: in_body
  doc: the detailed description of the issue being filed
  type: string?
  inputBinding:
    prefix: -body
- id: in_title
  doc: "the title of the issue being filed\n"
  type: string?
  inputBinding:
    prefix: -title
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- issue
