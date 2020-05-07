class: CommandLineTool
id: gatk3_register.cwl
inputs:
- id: multiple
  doc: support multiple arguments and treat each as a NAME
  type: boolean
  inputBinding:
    prefix: --multiple
- id: suffix
  doc: remove a trailing SUFFIX; implies -a
  type: string
  inputBinding:
    prefix: --suffix
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- gatk3-register
