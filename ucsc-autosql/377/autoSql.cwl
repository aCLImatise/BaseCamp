class: CommandLineTool
id: autoSql.cwl
inputs:
- id: default_zeros
  doc: zero and or empty string as default value
  type: string
  inputBinding:
    prefix: -defaultZeros
- id: generate
  doc: to output object as django model Python code
  type: string
  inputBinding:
    prefix: '- generate'
- id: generate
  doc: to output the object in JSON (JavaScript) format.
  type: string
  inputBinding:
    prefix: '- generate'
outputs: []
cwlVersion: v1.1
baseCommand:
- autoSql
