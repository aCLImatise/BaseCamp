class: CommandLineTool
id: gcloud_app_applications..cwl
inputs:
- id: in_versions
  doc: command may be         browse | create | deploy | describe | open-console
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- app
- applications.
