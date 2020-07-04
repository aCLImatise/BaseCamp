class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdc_client_settings_upload.cwl
inputs:
- id: download
  doc: download data from the GDC
  type: string
  inputBinding:
    position: 0
- id: upload
  doc: upload data to the GDC
  type: string
  inputBinding:
    position: 1
- id: settings
  doc: display default settings
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gdc-client
- settings
- upload
