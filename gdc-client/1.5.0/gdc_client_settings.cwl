class: CommandLineTool
id: ../../../gdc_client_settings.cwl
inputs:
- id: config
  doc: Path to INI-type config file. See what settings will look like if a custom
    config file is used
  type: File
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- gdc-client
- settings
