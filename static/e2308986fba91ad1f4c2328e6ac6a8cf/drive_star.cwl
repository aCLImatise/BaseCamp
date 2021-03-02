class: CommandLineTool
id: drive_star.cwl
inputs:
- id: in_no_prompt
  doc: disables the prompt
  type: boolean?
  inputBinding:
    prefix: -no-prompt
- id: in_quiet
  doc: "if set, do not log anything but errors\n"
  type: boolean?
  inputBinding:
    prefix: -quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- star
