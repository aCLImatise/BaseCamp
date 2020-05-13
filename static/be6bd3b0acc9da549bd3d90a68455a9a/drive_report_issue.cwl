class: CommandLineTool
id: drive_report_issue.cwl
inputs:
- id: piped
  doc: get content in from standard input (stdin)
  type: boolean
  inputBinding:
    prefix: -piped
- id: title
  doc: the title of the issue being filed
  type: string
  inputBinding:
    prefix: -title
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- report-issue
