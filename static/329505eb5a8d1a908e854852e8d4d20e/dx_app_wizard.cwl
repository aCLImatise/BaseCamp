class: CommandLineTool
id: dx_app_wizard.cwl
inputs:
- id: name
  doc: Name of your app
  type: string
  inputBinding:
    position: 0
- id: json_file
  doc: Use the metadata and IO spec found in the given file
  type: string
  inputBinding:
    prefix: --json-file
- id: language
  doc: Programming language of your app
  type: string
  inputBinding:
    prefix: --language
- id: template
  doc: Execution pattern of your app
  type: string
  inputBinding:
    prefix: --template
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-app-wizard
