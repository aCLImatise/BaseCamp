class: CommandLineTool
id: getUnitigTypeFromAsmFile.perl.cwl
inputs:
- id: in_grep
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getUnitigTypeFromAsmFile.perl
