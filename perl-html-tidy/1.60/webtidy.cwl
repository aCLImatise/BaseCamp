class: CommandLineTool
id: ../../../webtidy.cwl
inputs:
- id: context
  doc: '[=n]   Show the offending line (and n surrounding lines)'
  type: boolean
  inputBinding:
    prefix: --context
- id: no_errors
  doc: Ignore errors
  type: boolean
  inputBinding:
    prefix: --noerrors
- id: no_warnings
  doc: Ignore warnings
  type: boolean
  inputBinding:
    prefix: --nowarnings
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- webtidy
