class: CommandLineTool
id: genometreetk_pull.cwl
inputs:
- id: in_no_validation
  doc: do not assume decorated nodes adhear to standard taxonomy
  type: boolean
  inputBinding:
    prefix: --no_validation
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_input_tree
  doc: decorated tree
  type: string
  inputBinding:
    position: 0
- id: in_output_taxonomy
  doc: output taxonomy file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genometreetk
- pull
