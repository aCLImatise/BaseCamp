class: CommandLineTool
id: gcloud_app_browse.cwl
inputs:
- id: in_launch_browser
  doc: "Launch a browser if possible. When disabled, only displays the URL.\nEnabled\
    \ by default, use --no-launch-browser to disable."
  type: boolean
  inputBinding:
    prefix: --launch-browser
- id: in_service
  doc: "The service that should be opened. If not specified, use the default\nservice.\
    \ May be used in conjunction with --version."
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
- browse
