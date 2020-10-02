class: CommandLineTool
id: csb_promix.cwl
inputs:
- id: in_components
  doc: Number of components (default=-1)
  type: long
  inputBinding:
    prefix: --components
- id: in_type
  doc: "Type of mixture (default=segments)\n"
  type: string
  inputBinding:
    prefix: --type
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: long
  inputBinding:
    position: 0
- id: in_in_file
  doc: input PDB file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- csb-promix
