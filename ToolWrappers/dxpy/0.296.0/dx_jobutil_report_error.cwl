class: CommandLineTool
id: dx_jobutil_report_error.cwl
inputs:
- id: in_message
  doc: Error message for the job
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-report-error
