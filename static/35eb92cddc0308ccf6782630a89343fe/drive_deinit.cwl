class: CommandLineTool
id: ../../../drive_deinit.cwl
inputs:
- id: in_no_prompt
  doc: "disables the prompt\n"
  type: boolean
  inputBinding:
    prefix: -no-prompt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- deinit
