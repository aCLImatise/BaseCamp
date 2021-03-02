class: CommandLineTool
id: fetchChromSizes.cwl
inputs:
- id: in_always_prompt_removing
  doc: Always prompt before removing
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_never_prompt
  doc: Never prompt
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_recurse
  doc: Recurse
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_irf
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -irf
- id: in_rm
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fetchChromSizes
