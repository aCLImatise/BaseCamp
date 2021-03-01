class: CommandLineTool
id: gdc_client_settings_upload.cwl
inputs:
- id: in_download
  doc: download data from the GDC
  type: string
  inputBinding:
    position: 0
- id: in_upload
  doc: upload data to the GDC
  type: string
  inputBinding:
    position: 1
- id: in_settings
  doc: display default settings
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gdc-client:1.6.0--py_0
cwlVersion: v1.1
baseCommand:
- gdc-client
- settings
- upload
