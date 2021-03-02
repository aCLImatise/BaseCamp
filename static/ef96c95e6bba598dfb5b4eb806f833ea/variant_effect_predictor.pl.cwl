class: CommandLineTool
id: variant_effect_predictor.pl.cwl
inputs:
- id: in_input_file
  doc: Input file
  type: boolean?
  inputBinding:
    prefix: --input_file
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_force_overwrite
  doc: Force overwriting of output file
  type: File?
  inputBinding:
    prefix: --force_overwrite
- id: in_species
  doc: '[species]    Species to use [default: "human"]'
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_everything
  doc: "Shortcut switch to turn on commonly used options. See web\ndocumentation for\
    \ details [default: off]"
  type: boolean?
  inputBinding:
    prefix: --everything
- id: in_fork
  doc: '[num_forks]     Use forking to improve script runtime'
  type: boolean?
  inputBinding:
    prefix: --fork
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_force_overwrite
  doc: Force overwriting of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- variant_effect_predictor.pl
