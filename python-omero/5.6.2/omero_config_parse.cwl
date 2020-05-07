class: CommandLineTool
id: omero_config_parse.cwl
inputs:
- id: file
  doc: Alternative location for a Java properties file
  type: File
  inputBinding:
    prefix: --file
- id: defaults
  doc: Show key/value configuration defaults
  type: boolean
  inputBinding:
    prefix: --defaults
- id: rst
  doc: Generate reStructuredText from omero.properties
  type: boolean
  inputBinding:
    prefix: --rst
- id: keys
  doc: Print just the keys from omero.properties
  type: boolean
  inputBinding:
    prefix: --keys
- id: headers
  doc: Print all headers from omero.properties
  type: boolean
  inputBinding:
    prefix: --headers
- id: no_web
  doc: Do not parse Web properties
  type: boolean
  inputBinding:
    prefix: --no-web
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- parse
