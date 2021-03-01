class: CommandLineTool
id: treemaker.cwl
inputs:
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_mode
  doc: 'output mode: nexus or newick'
  type: string?
  inputBinding:
    prefix: --mode
- id: in_labels
  doc: show node labels
  type: boolean?
  inputBinding:
    prefix: --labels
- id: in_input
  doc: inputfile
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- treemaker
