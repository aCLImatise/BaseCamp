class: CommandLineTool
id: byobu_disable_prompt.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- byobu-disable-prompt
