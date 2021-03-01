class: CommandLineTool
id: genometreetk_append.cwl
inputs:
- id: in_silent
  doc: suppress output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_input_tree
  doc: input tree to decorate
  type: string
  inputBinding:
    position: 0
- id: in_input_taxonomy
  doc: input taxonomy file
  type: string
  inputBinding:
    position: 1
- id: in_output_tree
  doc: output tree with taxonomy appended to extant taxon labels
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genometreetk
- append
