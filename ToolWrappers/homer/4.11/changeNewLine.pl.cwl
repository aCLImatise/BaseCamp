class: CommandLineTool
id: changeNewLine.pl.cwl
inputs:
- id: in_do_prompt_overwriting
  doc: Don't prompt before overwriting
  type: boolean
  inputBinding:
    prefix: -f
- id: in_interactive_prompt_overwrite
  doc: Interactive, prompt before overwrite
  type: boolean
  inputBinding:
    prefix: -i
- id: in_overwrite_existing_file
  doc: Don't overwrite an existing file
  type: boolean
  inputBinding:
    prefix: -n
- id: in_fin
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fin
- id: in_mv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dest
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- changeNewLine.pl
