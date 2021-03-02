class: CommandLineTool
id: genometreetk_strip_output_tree.cwl
inputs:
- id: in_silent
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_genome_tree_tk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_strip
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_tree
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_tree
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genometreetk
- strip
- output_tree
