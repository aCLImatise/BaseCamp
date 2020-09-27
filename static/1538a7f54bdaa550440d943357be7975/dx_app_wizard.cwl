class: CommandLineTool
id: dx_app_wizard.cwl
inputs:
- id: in_json_file
  doc: Use the metadata and IO spec found in the given file
  type: File
  inputBinding:
    prefix: --json-file
- id: in_language
  doc: Programming language of your app
  type: string
  inputBinding:
    prefix: --language
- id: in_template
  doc: "Execution pattern of your app\n"
  type: string
  inputBinding:
    prefix: --template
- id: in_name
  doc: Name of your app
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-app-wizard
