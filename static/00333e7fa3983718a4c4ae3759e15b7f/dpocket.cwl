class: CommandLineTool
id: dpocket.cwl
inputs:
- id: in_prefix_output_
  doc: ': Prefix of the output file.               (./dpout_*)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_use_first_default
  doc: ": Use the first protein-ligand explicit\ninterface definition (default)."
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_use_second_definition
  doc: ": Use the second protein-ligand explicit\ninterface definition."
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_distance_criteria_chooseninterface
  doc: ": Distance criteria for the choosen\ninterface definition.               \
    \           (4.0)"
  type: double?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix_output_
  doc: ': Prefix of the output file.               (./dpout_*)'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix_output_)
hints: []
cwlVersion: v1.1
baseCommand:
- dpocket
