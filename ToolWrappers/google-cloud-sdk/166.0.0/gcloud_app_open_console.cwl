class: CommandLineTool
id: gcloud_app_open_console.cwl
inputs:
- id: in_logs
  doc: Open the log viewer instead of the App Engine dashboard.
  type: boolean
  inputBinding:
    prefix: --logs
- id: in_service
  doc: The service to consider. If not specified, use the default service.
  type: string
  inputBinding:
    prefix: --service
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- app
- open-console
