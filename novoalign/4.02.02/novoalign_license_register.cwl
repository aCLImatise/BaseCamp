class: CommandLineTool
id: ../../../novoalign_license_register.cwl
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
- id: end_output_line
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- novoalign-license-register
