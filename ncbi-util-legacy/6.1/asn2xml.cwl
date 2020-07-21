class: CommandLineTool
id: ../../../asn2xml.cwl
inputs:
- id: log_errors_file
  doc: 'Log errors to file named: [File Out]  Optional'
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- asn2xml
