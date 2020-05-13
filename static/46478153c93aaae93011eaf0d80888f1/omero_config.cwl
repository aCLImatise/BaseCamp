class: CommandLineTool
id: omero_config.cwl
inputs:
- id: source
  doc: 'Configuration file to be used. Default: etc/grid/config.xml'
  type: string
  inputBinding:
    prefix: --source
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
